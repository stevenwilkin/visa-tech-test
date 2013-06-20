Given /^I have a contact (.+) (.+)$/ do |first_name, last_name|
  FactoryGirl.create(:contact, first_name: first_name, last_name: last_name)
end

When /^I view the list$/ do
  visit '/'
end

Then /^I can see (.+)$/ do |full_name|
  page.body.should match full_name
end
