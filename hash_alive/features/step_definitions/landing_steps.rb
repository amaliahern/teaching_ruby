Given /^I am on landing page$/ do
  visit '/'
end

Then /^I should see Welcome to Hash Alive!$/ do
  page.should have_content("Welcome to Hash Alive!")
end

Then /^I should see "([^"]*)" in a link$/ do |text|
  page.should have_link text
end

Then /^I could input pairs key\/value$/ do
    pending # express the regexp above with the code you wish you had
end
