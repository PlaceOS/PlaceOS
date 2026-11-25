import {
	uniqueNamesGenerator,
	Config,
	animals
} from 'unique-names-generator';
const path = require("path");
const downloadsFolder = Cypress.config("downloadsFolder");

const config = {
	dictionaries: [animals]
}

describe("Modules test", () => {
	beforeEach(() => {
		cy.login();
		cy.wait(1000);
		cy.visit('https://localhost:8443/backoffice/#/modules/-/about');
		cy.wait(500);
	});

	let module_name = uniqueNamesGenerator(config);
  let new_name = uniqueNamesGenerator(config);

	it("Can create a module", () => {
    // create driver needed
		let driver_name = uniqueNamesGenerator(config);
		cy.addDriver(driver_name);
		cy.addModule(driver_name);
	});

	it("Can select a module", () => {
		let driver_name = uniqueNamesGenerator(config);
		cy.addDriver(driver_name);
		cy.addModule(driver_name);
		cy.get('*[class^="cdk-virtual-scroll-content-wrapper"]').children().first().click({
			force: true
		});
		cy.get('*[class^="font-medium text-lg"]').contains("Settings");
	});

	it("Can edit a module", () => {
		let driver_name = uniqueNamesGenerator(config);
		cy.addDriver(driver_name);
		cy.addModule(driver_name);

		cy.get('*[class^="cdk-virtual-scroll-content-wrapper"]').children().first().click({
			force: true
		});
		cy.get('*[class^="backoffice-dots-three-vertical ng-star-inserted"]').click();
		cy.contains('Edit module').click({
			force: true,
		});

		cy.get('[placeholder="Custom Name"]').focus().clear().type(new_name);
		cy.contains('Save').click({
			force: true
		})
		cy.get('*[class^="heading select-text"]').contains(new_name);
	});

  it.skip("Can filter the modules", () => {
		cy.get('*[class^="search"]').type(new_name);
		cy.wait(1000);
		cy.get('*[class^="cdk-virtual-scroll-content-wrapper"]').children().should('have.length', 1)
		cy.get('*[class^="search"]').clear();
	});

	it("Can see which systems the selected module is used in", () => {
		let driver_name = uniqueNamesGenerator(config);
		cy.addDriver(driver_name);
		cy.addModule(driver_name);
		cy.get('*[class^="cdk-virtual-scroll-content-wrapper"]').children().first().click({
			force: true
		});
		cy.get('*[class^="name"]').contains('Systems').click({
			force: true
		});
		cy.get('[placeholder="Filter systems..."]');
	});

	it("Can start the module", () => {
		let driver_name = uniqueNamesGenerator(config);
		cy.addDriver(driver_name);
		cy.addModule(driver_name);
		cy.get('*[class^="cdk-virtual-scroll-content-wrapper"]').children().first().click({
			force: true
		});
		cy.contains('Start Module').click()
	});

	it("Can export a module", () => {
		let driver_name = uniqueNamesGenerator(config);
		cy.addDriver(driver_name);
		cy.addModule(driver_name);
		cy.get('*[class^="cdk-virtual-scroll-content-wrapper"]').children().first().click({
			force: true
		});
		cy.get('*[class^="backoffice-dots-three-vertical ng-star-inserted"]').click();
		cy.get('*[class^="heading select-text"]').then(($hd) => {
			let user = $hd.text()
			user = user.trim().replace(/ /g, "_").toLowerCase();
			cy.wait(1000);
			cy.contains('Export module').click();
			// cy.readFile(path.join(downloadsFolder, user + ".modules.tsv")).should("exist");
		});
	});

  it("Can supply new Unencrypted Module settings", () => {
		let driver_name = uniqueNamesGenerator(config);
		cy.addDriver(driver_name);
		cy.addModule(driver_name);
    cy.get('*[class^="cdk-virtual-scroll-content-wrapper"]').children().first().click({force: true});
    cy.contains('Unencrypted').click({
			force: true
		});
    cy.get('*[class^="view-lines monaco-mouse-cursor-text"]').click().type('"{bool_setting" : true}', { parseSpecialCharSequences: false });
    cy.wait(1000);
    cy.contains('Save').click({
			force: true
		});
    cy.get('*[class^="mat-simple-snackbar ng-star-inserted"]').contains("Successfully");
	});

	it("Can delete a module", () => {
		let driver_name = uniqueNamesGenerator(config);
		cy.addDriver(driver_name);
		cy.addModule(driver_name);
		cy.get('*[class^="cdk-virtual-scroll-content-wrapper"]').children().first().click({
			force: true
		});
		cy.get('*[class^="backoffice-dots-three-vertical ng-star-inserted"]').click();
		cy.wait(1000);
		cy.contains('Delete module').click();
		cy.wait(1000);
		cy.contains('Ok').click();
		cy.get('*[class^="mat-simple-snackbar ng-star-inserted"]').contains("Successfully");
	});
});
