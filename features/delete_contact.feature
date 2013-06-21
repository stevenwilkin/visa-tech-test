Feature: Deleting a contact
  As a user 
  I want to remove a contact
  so that I can remove people I don't like anymore

  Scenario: Deleting a contact
  	Given I have a contact Bob Smith
	When I delete contact Bob Smith
	Then I cannot see contact Bob Smith
