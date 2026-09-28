import {
	uniqueNamesGenerator,
	Config,
	animals,
	colors
} from 'unique-names-generator';
const path = require("path");
const downloadsFolder = Cypress.config("downloadsFolder");

function getRandomInt(max) {
  return Math.floor(Math.random() * max);
}

const config = {
	dictionaries: [animals]
}

const config2 = {
	dictionaries: [colors]
}

describe("Triggers test", () => {
	beforeEach(() => {
		cy.login();
		cy.wait(1000);
		cy.visit('https://localhost:8443/backoffice/#/triggers/-/about');
		cy.wait(500);
	});

	it("Can create a trigger", () => {
		let trigger_name = uniqueNamesGenerator(config);
		cy.addTrigger(trigger_name);
	});

	it("Can filter the triggers", () => {
		let trigger_name = uniqueNamesGenerator(config2);
		cy.addTrigger(trigger_name);

		cy.get('*[class^="search"]').type(trigger_name);
		cy.wait(1000);
		cy.get('*[class^="cdk-virtual-scroll-content-wrapper"]').children().should('have.length', 1)
		cy.get('*[class^="search"]').clear();
	});

	it("Can select a trigger", () => {
		let trigger_name = uniqueNamesGenerator(config);
		cy.addTrigger(trigger_name);
		cy.get('*[class^="cdk-virtual-scroll-content-wrapper"]').children().first().click({
			force: true
		});
		cy.get('*[class^="font-medium text-lg"]').contains("Conditions");
	});

  it("Can add a new trigger condition", () => {
		let trigger_name4 = uniqueNamesGenerator(config2);
		cy.addTrigger(trigger_name4);

    // create driver needed
		let driver_name = "trigger-driver" + getRandomInt(1000)
		cy.addDriver(driver_name);

    //create module needed
    cy.addModule(driver_name);

    // add to system
		let system_name = uniqueNamesGenerator(config) + getRandomInt(100);
		cy.addSystem(system_name);
    cy.wait(1000);
    cy.get('*[class^="name"]').contains('Modules').click({force: true });
    cy.get('*[class^="item-search-field"]').click();
    cy.wait(1000);
    cy.get('*[class^="email"]').contains(driver_name).click({force: true});
    cy.wait(1000);
    cy.contains('Add existing').click({force: true});
    cy.get('*[class^="mat-simple-snackbar ng-star-inserted"]').contains("Successfully added module to system.");

    // now we get to the actual trigger
		cy.reload();
    cy.visit('https://localhost:8443/backoffice/#/triggers/-/about');
    cy.wait(1000);
		cy.get('*[class^="search"]').type(trigger_name4);
		cy.wait(2000);
    cy.get('*[class^="cdk-virtual-scroll-content-wrapper"]').children().first().click({
			force: true
		});
		cy.wait(1000);

		cy.get('[placeholder="Search for system..."]').click();
    cy.wait(1000);
    cy.get('*[class^="mat-option-text"]').contains(system_name).click({force: true});
    cy.wait(1000);
    cy.get('*[class^="mat-focus-indicator mat-icon-button mat-button-base"]').first().click();

		cy.get('[placeholder="Select module"]').click();
    cy.get('*[class^="mat-option-text"]').last().click({force: true});

    cy.get('*[class^="mat-select"]').contains("Select status variable").click();
    cy.get('*[class^="mat-option-text"]').last().click({force: true});
    cy.get('[placeholder="Status variable subkeys..."]').click().type("orange");
    cy.get('[placeholder="true/false, \'string\', 123.456"]').click().type("4");
    cy.get('*[class^="mat-button-wrapper"]').contains('Add').click();
    cy.get('*[class^="mat-simple-snackbar ng-star-inserted"]').contains("Successfully");
	});

  it("Can add a new trigger action", () => {
		let trigger_name4 = uniqueNamesGenerator(config2);
		cy.addTrigger(trigger_name4);

    // create driver needed
		let driver_name = "trigger-driver" + getRandomInt(1000)
		cy.addDriver(driver_name);

    //create module needed
    cy.addModule(driver_name);

    // add to system
		let system_name = uniqueNamesGenerator(config) + getRandomInt(100);
		cy.addSystem(system_name);
    cy.wait(1000);
    cy.get('*[class^="name"]').contains('Modules').click({force: true });
    cy.get('*[class^="item-search-field"]').click();
    cy.wait(1000);
    cy.get('*[class^="email"]').contains(driver_name).click({force: true});
    cy.wait(1000);
    cy.contains('Add existing').click({force: true});
    cy.get('*[class^="mat-simple-snackbar ng-star-inserted"]').contains("Successfully added module to system.");

    // now we get to the actual trigger
		cy.reload();
    cy.visit('https://localhost:8443/backoffice/#/triggers/-/about');
    cy.wait(1000);
		cy.get('*[class^="search"]').type(trigger_name4);
		cy.wait(2000);
    cy.get('*[class^="cdk-virtual-scroll-content-wrapper"]').children().first().click({
			force: true
		});
		cy.wait(1000);

		cy.get('[placeholder="Search for system..."]').click();
    cy.wait(1000);
    cy.get('*[class^="mat-option-text"]').contains(system_name).click({force: true});
    cy.wait(1000);
    cy.get('*[class^="mat-focus-indicator mat-icon-button mat-button-base"]').last().click();

    cy.get('*[class^="mat-select"]').first().click();
    cy.get('*[class^="mat-option-text"]').last().click({force: true});
    cy.get('[placeholder="New email..."]').click().type("place@os.com");
    cy.get('[placeholder="Email body contents..."]').click().type("This is the email body...");
    cy.get('*[class^="mat-button-wrapper"]').contains('Add').click();
    cy.get('*[class^="mat-simple-snackbar ng-star-inserted"]').contains("Successfully");
	});

	it("Can see which systems the selected trigger is used in", () => {
		cy.get('*[class^="cdk-virtual-scroll-content-wrapper"]').children().first().click({
			force: true
		});
		cy.get('*[class^="name"]').contains('Instances').click({
			force: true
		});
		cy.get('*[class^="mat-tab-link mat-focus-indicator tab ng-star-inserted mat-tab-label-active"]').contains('Instances');
	});


	it("Can edit a trigger", () => {
		let trigger_name = uniqueNamesGenerator(config);
		cy.addTrigger(trigger_name);
		cy.get('*[class^="search"]').type(trigger_name);
		cy.wait(1000);
		cy.get('*[class^="cdk-virtual-scroll-content-wrapper"]').children().first().click({
			force: true
		});
		cy.get('*[class^="backoffice-dots-three-vertical ng-star-inserted"]').click();
		cy.contains('Edit trigger').click({
			force: true,
		});
		let new_name = uniqueNamesGenerator(config)
		cy.get('input[name="trigger-name"]').focus().clear()
		cy.wait(1000);
		cy.get('input[name="trigger-name"]').type(new_name);
		cy.wait(1000);
		cy.contains('Save').click({
			force: true
		})
		cy.get('*[class^="heading select-text"]').contains(new_name);
	});

	it("Can export a trigger", () => {
		let trigger_name = uniqueNamesGenerator(config);
		cy.addTrigger(trigger_name);
		cy.get('*[class^="search"]').type(trigger_name);
		cy.wait(1000);
		cy.get('*[class^="cdk-virtual-scroll-content-wrapper"]').children().first().click({
			force: true
		});
		cy.get('*[class^="backoffice-dots-three-vertical ng-star-inserted"]').click();
		cy.get('*[class^="heading select-text"]').then(($hd) => {
			let user = $hd.text()
			user = user.trim().replace(/ /g, "_").toLowerCase();
			cy.wait(1000);
			cy.contains('Export trigger').click();
			cy.readFile(path.join(downloadsFolder, user + ".triggers.tsv")).should("exist");
		});
	});

	it("Can delete a trigger", () => {
		let trigger_name = uniqueNamesGenerator(config);
		cy.addTrigger(trigger_name);
		cy.get('*[class^="search"]').type(trigger_name);
		cy.wait(1000);
		cy.get('*[class^="cdk-virtual-scroll-content-wrapper"]').children().first().click({
			force: true
		});
		cy.get('*[class^="backoffice-dots-three-vertical ng-star-inserted"]').click();
		cy.wait(1000);
		cy.contains('Delete trigger').click();
		cy.wait(1000);
		cy.contains('Ok').click();
		cy.get('*[class^="mat-simple-snackbar ng-star-inserted"]').contains("Successfully");
	});
});
