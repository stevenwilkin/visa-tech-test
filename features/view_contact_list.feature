Feature: View the contacts list
  As a user
  I want to see a list of contacts
  so that I can keep track of people I know

  Scenario: View the list
  	Given I have a contact Bob Smith
	And I have a contact Tom Jones
	When I view the list
	Then I can see contact Bob Smith
	And I can see contact Tom Jones
