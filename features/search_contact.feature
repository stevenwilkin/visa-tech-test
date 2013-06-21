Feature: Searching for a contact
  As a user
  I want to search for a contact
  so that I can find the person I'm looking for
  - search by last name is minimum requirement

  @javascript
  Scenario: Searching for an existing contact
  	Given I have a contact Bob Smith with email foo@bar.com and mobile 1234567890
	When I enter Smi into the search box
	And I click on the first search result
	Then I can see email foo@bar.com
