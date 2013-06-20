Feature: View an individual contact
  As a user
  I want to view a contact from my list
  so that I can see their details

  Scenario: View the contact
  	Given I have a contact Bob Smith with email foo@bar.com and mobile 1234567890
	When I view the details of Bob Smith
	Then I can see email foo@bar.com
	And I can see mobile 1234567890
