const path = require("path");
const downloadsFolder = Cypress.config("downloadsFolder");

import {
	uniqueNamesGenerator,
	Config,
	animals
} from 'unique-names-generator';

const config = {
	dictionaries: [animals]
}

describe("Drivers test", () => {

  beforeEach(() => {
    cy.login();
    cy.wait(1000);
    cy.visit('https://localhost:8443/backoffice/#/drivers/-/about');
    cy.wait(500);
  })

  it("Can create a driver", () => {
    cy.addDriver();
  });

  it("Can select a driver", () => {
    cy.addDriver();
    cy.get('*[class^="item"]', { timeout: 80000 }).should('exist');
    cy.get('*[class^="cdk-virtual-scroll-content-wrapper"]').children().first().click({force: true});
    cy.contains('Created:')
  });

  it("Can recompile a driver", () => {
    cy.get('*[class^="item"]', { timeout: 80000 }).should('exist');
    let driver_name = uniqueNamesGenerator(config);
    cy.addDriver(driver_name);
		cy.get('*[class^="search"]').type(driver_name);
		cy.wait(1000);
    cy.get('*[class^="cdk-virtual-scroll-content-wrapper"]').children().first().click({force: true});
    cy.contains('Recompile Driver').click();
    cy.contains('Ok').click();
    cy.get('*[class^="mat-simple-snackbar ng-star-inserted"]', { timeout: 50000 }).should('be.visible');
  });

  it("Can supply new Unencrypted Driver settings", () => {
    cy.get('*[class^="item"]', { timeout: 80000 }).should('exist');
    let driver_name = uniqueNamesGenerator(config);
    cy.addDriver(driver_name);
		cy.get('*[class^="search"]').type(driver_name);
		cy.wait(1000);
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

  it("Can filter Modules in a driver", () => {
    cy.get('*[class^="item"]', { timeout: 80000 }).should('exist');
    let driver_name = uniqueNamesGenerator(config);
    cy.addDriver(driver_name);
		cy.get('*[class^="search"]').type(driver_name);
		cy.wait(1000);
    cy.get('*[class^="cdk-virtual-scroll-content-wrapper"]').children().first().click({force: true});
    cy.get('*[class^="name"]').contains('Modules').click({
			force: true
		});
    cy.get('[placeholder="Filter triggers..."]');
  });

  it("Can see which Modules the selected Driver is used in", () => {
    cy.get('*[class^="item"]', { timeout: 80000 }).should('exist');
    let driver_name = uniqueNamesGenerator(config);
    cy.addDriver(driver_name);
		cy.get('*[class^="search"]').type(driver_name);
		cy.wait(1000);
    cy.get('*[class^="cdk-virtual-scroll-content-wrapper"]').children().first().click({force: true});
    cy.get('*[class^="name"]').contains('Modules').click({force: true });
    cy.get('[placeholder="Filter triggers..."]');
  });

  it("Can delete a driver", () => {
    cy.get('*[class^="item"]', { timeout: 80000 }).should('exist');
    let driver_name = uniqueNamesGenerator(config);
    cy.addDriver(driver_name);
		cy.get('*[class^="search"]').type(driver_name);
		cy.wait(1000);
    cy.get('*[class^="cdk-virtual-scroll-content-wrapper"]').children().first().click({force: true});
		cy.get('*[class^="backoffice-dots-three-vertical ng-star-inserted"]').click();
		cy.wait(1000);
		cy.contains('Delete driver').click();
		cy.wait(1000);
		cy.contains('Ok').click();
		cy.get('*[class^="mat-simple-snackbar ng-star-inserted"]').contains("Successfully");
	});
});
