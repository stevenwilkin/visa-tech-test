Feature: Add a new contact
  As a user
  I want to add a new contact
  so that I can increase my contact list

  Scenario: Add a new contact
  	Given I have entered details for Bob Smith with email foo@bar.com and mobile 1234567890
	When I save the contact
	Then I can see contact Bob Smith
