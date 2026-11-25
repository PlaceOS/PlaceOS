import {
	uniqueNamesGenerator,
	Config,
	animals
} from 'unique-names-generator';

const config = {
	dictionaries: [animals]
}

function getRandomInt(max) {
  return Math.floor(Math.random() * max);
}


Cypress.Commands.add('login', ()=> {
  let username = 'support@place.tech'
	let password = 'development'
	cy.visit('https://localhost:8443/login')
	cy.visit('https://localhost:8443/login')
	cy.get('input[name="email"]').type(username);
	cy.get('input[name="password"]').type(password);
	cy.get("form").submit();
});

Cypress.Commands.add('addDriver', (name = "MyDriver")=> {
  cy.visit('https://localhost:8443/backoffice/#/drivers/-/about');
  cy.wait(1000);
  cy.get('*[class^="mat-focus-indicator mat-tooltip-trigger add mat-icon-button mat-button-base ng-star-inserted"]').click();
  cy.wait(1000);
  cy.get('[placeholder="Search for repository..."]').click({force: true}).type("Drivers");
	cy.wait(1000);
  cy.get('*[class^="mat-option-text"]').contains(/^Drivers$/).click({force: true});
	cy.contains('Driver Base: ', { timeout: 80000 }).should('exist');
  cy.get('[placeholder="Search for driver..."]').click().focus().type("drivers > whispir > messages.cr");
  cy.wait(1000);
  cy.get('*[class^="mat-option-text"]').contains("drivers > whispir > messages.cr").click({force: true});
	cy.contains('Driver Commit:', { timeout: 80000 }).should('exist');
  cy.get('[placeholder="Search for commit..."]').click();
  cy.wait(1000);
  cy.get('*[class^="mat-option-text"]').contains("feat: migrate to standalone drivers").click({force: true});
  cy.contains('Loading driver details for commit...', { timeout: 80000 }).should('not.exist');
  cy.get('[placeholder="Driver Name"]').focus().clear().type(name);
  cy.contains('Save').click({force: true });
  cy.get('*[class^="mat-simple-snackbar ng-star-inserted"]').contains("Successfully");
});

Cypress.Commands.add('addSystem', (system_name) => {
	let zone_name = uniqueNamesGenerator(config) + getRandomInt(1000);
	cy.addZone(zone_name);
  cy.visit('https://localhost:8443/backoffice/#/systems/-/about');
  cy.wait(1000);
  cy.get('*[class^="mat-focus-indicator mat-tooltip-trigger add mat-icon-button mat-button-base ng-star-inserted"]').click();
  cy.wait(1000);
  cy.get('[placeholder="Search for zone..."]').type(zone_name);
  cy.wait(1000);
  cy.get('*[class^="mat-option-text"]').first().click({force: true});
  cy.get('[placeholder="System Name"]').click().type(system_name)
  cy.contains('Save').click({force: true });
  cy.get('*[class^="mat-simple-snackbar ng-star-inserted"]').contains("Successfully added system");
	cy.contains('OK').click({force: true });
});

Cypress.Commands.add('addModule', (driver_name) => {
  cy.visit('https://localhost:8443/backoffice/#/modules/-/about');
  cy.wait(1000);
  cy.get('*[class^="backoffice-plus ng-star-inserted"]').click();
  cy.wait(1000);
  cy.get('[placeholder="Search for driver..."]').focus().type(driver_name);
  cy.wait(1000);
  cy.get('*[class^="mat-option-text"]').contains(driver_name).click({force: true});
	cy.get('[placeholder="Module URI"]').focus().clear().type("https://localhost.com")
  cy.contains('Save').click({force: true });
  cy.contains("Successfully added module");
});

Cypress.Commands.add('addTrigger', (trigger_name) => {
  cy.visit('https://localhost:8443/backoffice/#/triggers/-/about');
  cy.wait(1000);
  cy.get('*[class^="mat-focus-indicator mat-tooltip-trigger add mat-icon-button mat-button-base ng-star-inserted"]').click();
  cy.wait(1000);
	cy.get('[placeholder="Trigger Name"]').focus().type(trigger_name);
  cy.contains('Save').click({force: true });
  cy.wait(50);
  cy.get('*[class^="mat-simple-snackbar ng-star-inserted"]').contains("Successfully added trigger");
});

Cypress.Commands.add('addDomain', (domain_name) => {
  cy.visit('https://localhost:8443/backoffice/#/domains/-/about');
  cy.wait(1000);
	cy.get('*[class^="mat-focus-indicator mat-tooltip-trigger add mat-icon-button mat-button-base ng-star-inserted"]').click();
	cy.wait(1000);
	cy.get('input[name="domain-name"]').focus().type(domain_name);
	cy.get('input[name="domain"]').focus().type("localhost" + getRandomInt(100))
	cy.contains('Save').click({force: true });
	cy.wait(50);
	cy.get('*[class^="heading select-text"]').contains(domain_name);
});

Cypress.Commands.add('addZone', (zone_name) => {
  cy.visit('https://localhost:8443/backoffice/#/zones/-/about');
  cy.wait(1000);
	cy.get('*[class^="mat-focus-indicator mat-tooltip-trigger add mat-icon-button mat-button-base ng-star-inserted"]').click();
	cy.wait(1000);
	cy.get('input[name="zone-name"]').focus().type(zone_name);
	cy.contains('Save').click({force: true });
	cy.get('*[class^="mat-simple-snackbar ng-star-inserted"]').contains("Successfully");
	cy.reload();
	cy.wait(1000);
});

Cypress.Commands.add('addSystemwithZone', (system_name, zone_name = "false") => {
  cy.visit('https://localhost:8443/backoffice/#/systems/-/about');
  cy.wait(1000);
	cy.get('*[class^="mat-focus-indicator mat-tooltip-trigger add mat-icon-button mat-button-base ng-star-inserted"]').click();
	cy.wait(1000);
	cy.get('[placeholder="Search for zone..."]').click({force: true});
	if (zone_name == "false") {
			cy.get('*[class^="mat-option-text"]').first().click({force: true});
		} else {
			cy.get('[placeholder="Search for zone..."]').focus().type(zone_name);
			cy.wait(1000);
		  cy.get('*[class^="mat-option-text"]').contains(zone_name).click({force: true});
		}
	cy.get('[placeholder="System Name"]').click().type(system_name)
	cy.contains('Save').click({force: true });
	cy.get('*[class^="mat-simple-snackbar ng-star-inserted"]').contains("Successfully");
	cy.reload();
	cy.visit('https://localhost:8443/backoffice/#/systems/-/about');
	cy.get('*[class^="search"]').type(system_name);
	cy.wait(1000);
	cy.get('*[class^="cdk-virtual-scroll-content-wrapper"]').children().first().click({force: true});
});

Cypress.Commands.add('addSystemWithModule', (system_name, module_name) => {
	cy.addSystem(system_name);
	let driver_name = uniqueNamesGenerator(config) + getRandomInt(1000);
	cy.addDriver(driver_name);
	cy.visit('https://localhost:8443/backoffice/#/systems/-/about');
	cy.wait(500);
	cy.get('*[class^="search"]').type(system_name);
	cy.wait(1000);
	cy.get('*[class^="cdk-virtual-scroll-content-wrapper"]').children().first().click({force: true});
	cy.get('*[class^="name"]').contains('Modules').click({force: true});
	cy.contains('Add new').click();
	cy.get('[placeholder="Search for driver..."]').click().type(driver_name);
	cy.wait(1000);
	cy.get('*[class^="mat-option-text"]').first().click({force: true});
	cy.wait(1000);
	cy.get('[placeholder="Custom Name"]').focus().type(module_name);
	cy.contains('Save').click({force: true });
	cy.get('*[class^="mat-simple-snackbar ng-star-inserted"]').contains("Successfully");
	cy.reload();
	cy.wait(1000);
	cy.get('*[class^="search"]').type(system_name);
	cy.wait(1000);
	cy.get('*[class^="cdk-virtual-scroll-content-wrapper"]').children().first().click({force: true});
});

Cypress.Commands.add('addUser', (first_name, last_name) => {
	cy.get('*[class^="mat-focus-indicator mat-tooltip-trigger add mat-icon-button mat-button-base ng-star-inserted"]').click();
	cy.wait(1000);
	cy.get('input[name="first-name"]').focus().type(first_name);
	cy.get('input[name="last-name"]').focus().type(last_name);
	cy.get('input[name="useremail"]').focus().type(first_name + "@email.au");
	cy.get('input[name="new-password"]').focus().type(last_name + "123!");
	cy.get('input[name="confirm-password"]').focus().type(last_name + "123!");
	cy.contains('Save').click({force: true });
	cy.get('*[class^="mat-simple-snackbar ng-star-inserted"]').contains("Successfully");
	cy.reload();
	cy.wait(1000);
	cy.get('*[class^="search"]').type(first_name + " " + last_name);
	cy.wait(1000);
	cy.get('*[class^="cdk-virtual-scroll-content-wrapper"]').children().first().click({force: true});
});
