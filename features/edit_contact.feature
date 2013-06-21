Feature: Editing a contact
  As a user
  I want to edit a contact
  so that I can change details as required

  Scenario: Editing a contact
    Given I have a contact Bob Smith with email foo@bar.com and mobile 1234567890
	When I change the email to bob@smith.com
	And I view the details of Bob Smith
	Then I can see email bob@smith.com
