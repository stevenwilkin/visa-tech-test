# Rails Contact List Unattended Test
 
Build a ruby on rails application that implements the below user stories:
 
	As a user
	I want to see a list of contacts
	so that I can keep track of people I know
  
	As a user
	I want to view a contact from my list
	so that I can see their details
 
	As a user
	I want to add a new contact
	so that I can increase my contact list
 
	As a user
	I want to edit a contact
	so that I can change details as required
 
	As a user 
	I want to remove a contact
	so that I can remove people I don't like anymore
 
	As a user
	I want to search for a contact
	so that I can find the person I'm looking for
	- search by last name is minimum requirement
 

## Contact Requirements

* first name (required)
* last name  (required)
* email address (required)
* mobile number (required)
* landline number (optional)
* twitter account (optional) 
* photo (optional)


## Other Requirements

* The solution must use ajax and any javascript framework you like.
* The solution must have some css and styled views
* Ruby 1.9 with Rails 3 is preferred

 
## Things we will be looking out for
 
1. How ajax is used
2. How you can prove everything is working as expected
3. Your choice of view template, asset management and javascript
4. Your choice of validations
5. Your use of ruby in general


## Running the application

Download the code, install the dependencies and run:

	git clone git@github.com:stevenwilkin/visa-tech-test.git
	cd visa-tech-test
	bundle install
	bundle exec rake db:create db:schema:load
	bundle exec rails server


Browse to [http://0.0.0.0:3000](http://0.0.0.0:3000)


## Running the tests

Create the test database:

	RAILS_ENV=test bundle exec rake db:create db:schema:load

Run the unit tests:

	bundle exec rake spec

Run the acceptance tests:

	bundle exec rake cucumber