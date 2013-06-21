Given /^I have a contact (\w+) (\w+)$/ do |first_name, last_name|
  FactoryGirl.create(:contact, first_name: first_name, last_name: last_name)
end

Given /^I have a contact (\w+) (\w+) with email (\S+) and mobile (\w+)$/ do |first_name, last_name, email, mobile|
  FactoryGirl.create(:contact, first_name: first_name, last_name: last_name, email: email, mobile: mobile)
end

Given /^I have entered details for (\w+) (\w+) with email (\S+) and mobile (\w+)$/ do |first_name, last_name, email, mobile|
  visit new_contact_path
  fill_in 'First name', with: first_name
  fill_in 'Last name', with: last_name
  fill_in 'Email', with: email
  fill_in 'Mobile', with: mobile
end


When /^I view the list$/ do
  visit '/'
end

When /^I view the details of (.+)$/ do |full_name|
  visit '/'
  click_link full_name
end

When /^I save the contact$/ do
  click_button 'Save'
end

When /^I change the email to (\S+)$/ do |email|
  visit '/'
  click_link 'Edit'
  fill_in 'Email', with: email
  click_button "Save"
end


Then /^I can see contact (.+)$/ do |full_name|
  page.body.should match full_name
end

Then /^I can see email (.+)$/ do |email|
  page.body.should match /Email.+#{email}/m
end

Then /^I can see mobile (.+)$/ do |mobile|
  page.body.should match /Mobile.+#{mobile}/m
end
