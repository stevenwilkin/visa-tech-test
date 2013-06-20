Given /^I have a contact (\w+) (\w+)$/ do |first_name, last_name|
  FactoryGirl.create(:contact, first_name: first_name, last_name: last_name)
end

Given /^I have a contact (\w+) (\w+) with email (\S+) and mobile (\w+)$/ do |first_name, last_name, email, mobile|
  FactoryGirl.create(:contact, first_name: first_name, last_name: last_name, email: email, mobile: mobile)
end

When /^I view the list$/ do
  visit '/'
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

When /^I view the details of (.+)$/ do |full_name|
  visit '/'
  click_link full_name
end
