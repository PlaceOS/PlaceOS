import {
	uniqueNamesGenerator,
	Config,
	names
} from 'unique-names-generator';
const path = require("path");
const downloadsFolder = Cypress.config("downloadsFolder");

const config = {
	dictionaries: [names]
}

function getRandomInt(max) {
  return Math.floor(Math.random() * max);
}

describe("Users test", () => {

	beforeEach(() => {
		cy.login();
		cy.wait(1000);
		//cy.addDomain("domain-for-user" + getRandomInt(10000))
		cy.visit('https://localhost:8443/backoffice/#/users/-/about');
		cy.wait(500);
	});

	it("Can create a user", () => {
		let first_name = uniqueNamesGenerator(config);
		let last_name = uniqueNamesGenerator(config);
		cy.addUser(first_name, last_name)
	});

	it("Can filter the users", () => {
		let first_name = uniqueNamesGenerator(config);
		let last_name = uniqueNamesGenerator(config);
		cy.addUser(first_name, last_name)
		cy.get('*[class^="cdk-virtual-scroll-content-wrapper"]').children().should('have.length', 1)
	});

	it("Can select a user", () => {
		let first_name = uniqueNamesGenerator(config);
		let last_name = uniqueNamesGenerator(config);
		cy.addUser(first_name, last_name);
		cy.get('*[class^="cdk-virtual-scroll-content-wrapper"]').children().first().click({
			force: true
		});
		cy.get('*[class^="w-40 p-2"]').contains("User Role");
	});

	it("Can edit a user", () => {
		let first_name = uniqueNamesGenerator(config);
		let last_name = uniqueNamesGenerator(config);
		cy.addUser(first_name, last_name);
		cy.get('*[class^="backoffice-dots-three-vertical ng-star-inserted"]').click();
		cy.contains('Edit user').click({
			force: true,
		});
		let new_name = uniqueNamesGenerator(config)
		cy.get('[placeholder="First name"]').focus().clear().type(new_name); 
		cy.contains('Save').click({
			force: true
		})
		cy.get('*[class^="heading select-text"]').contains(new_name);
	});

	it("Can export a user", () => {
		let first_name = uniqueNamesGenerator(config);
		let last_name = uniqueNamesGenerator(config);
		cy.addUser(first_name, last_name);
		cy.get('*[class^="backoffice-dots-three-vertical ng-star-inserted"]').click();
		cy.get('*[class^="heading select-text"]').then(($hd) => {
			let user = $hd.text()
			user = user.trim().replace(/ /g, "_").toLowerCase();
			cy.wait(1000);
			cy.contains('Export user').click();
			cy.readFile(path.join(downloadsFolder, user + ".users.tsv")).should("exist");
		});
	});

	it("Can flag incorrect metadata format", () => {
		let first_name = uniqueNamesGenerator(config);
		let last_name = uniqueNamesGenerator(config);
		cy.addUser(first_name, last_name);
		cy.get('*[class^="name"]').contains('Metadata').click({
			force: true
		});
		cy.wait(1000);
		cy.get('*[class^="mat-button-wrapper"]').contains('Add new Metadata Field').click();
		cy.get('*[class^="mt-4 ng-star-inserted"]').click();
		cy.get('*[class^="view-lines monaco-mouse-cursor-text"]').click().type('{backspace}')
		cy.wait(1000);
		cy.get('*[class^="ng-untouched ng-dirty ng-invalid"]').should('exist');
		cy.contains('Save').click();
		cy.get('*[class^="mat-simple-snackbar ng-star-inserted"]').contains("invalid");
		cy.get('*[class^="view-lines monaco-mouse-cursor-text"]').click().type('}', {
			parseSpecialCharSequences: false
		});
	});

	it("Can create a new metadata field for a User", () => {
		let first_name = uniqueNamesGenerator(config);
		let last_name = uniqueNamesGenerator(config);
		cy.addUser(first_name, last_name);
		cy.get('*[class^="name"]').contains('Metadata').click({
			force: true
		});
		cy.wait(1000);
		cy.get('*[class^="mat-button-wrapper"]').contains('Add new Metadata Field').click();
		cy.get('*[class^="mt-4 ng-star-inserted"]').click();
		cy.get('*[class^="view-lines monaco-mouse-cursor-text"]').click().type('{backspace}').type('"bool_setting" : true}', {
			parseSpecialCharSequences: false
		});
		cy.contains('Save').click();
		cy.get('*[class^="mat-simple-snackbar ng-star-inserted"]').contains("Saved");
	});

	it("Can edit metadata of a User", () => {
		let first_name = uniqueNamesGenerator(config);
		let last_name = uniqueNamesGenerator(config);
		cy.addUser(first_name, last_name);
		cy.get('*[class^="name"]').contains('Metadata').click({
			force: true
		});
		cy.wait(1000);
		cy.get('*[class^="mat-button-wrapper"]').contains('Add new Metadata Field').click();
		cy.get('*[class^="mt-4 ng-star-inserted"]').click();
		cy.get('*[class^="view-lines monaco-mouse-cursor-text"]').click().type('{backspace}').type('"bool_setting" : true}', {
			parseSpecialCharSequences: false
		});
		cy.contains('Save').click();
		cy.get('*[class^="mat-simple-snackbar ng-star-inserted"]').contains("Saved");

		cy.wait(1000);
		cy.get('*[class^="backoffice-edit ng-star-inserted"]').click();
		cy.get('input[name="property-name"]').focus().clear().type("Field2");
		cy.get('*[class^="mat-button-wrapper"]').contains("Update").click();
	});


	it("Can see the history of a user's actions", () => {
		let first_name = uniqueNamesGenerator(config);
		let last_name = uniqueNamesGenerator(config);
		cy.addUser(first_name, last_name);
		cy.get('*[class^="name"]').contains('History').click({
			force: true
		});
		cy.wait(1000);
		cy.get('*[class^="ng-star-inserted"]')
	});

	it("Can delete a user", () => {
		let first_name = uniqueNamesGenerator(config);
		let last_name = uniqueNamesGenerator(config);
		cy.addUser(first_name, last_name);
		cy.get('*[class^="backoffice-dots-three-vertical ng-star-inserted"]').click();
		cy.wait(1000);
		cy.contains('Delete user').click();
		cy.wait(1000);
		cy.contains('Ok').click();
		cy.get('*[class^="mat-simple-snackbar ng-star-inserted"]').contains("Successfully");
	});
});
