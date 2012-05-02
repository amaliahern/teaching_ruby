Given /^I am on delete page$/ do
  visit '/delete'
end

Then /^I should see Welcome to Delete Hash Method!$/ do
  page.should have_content("Welcome to Delete Hash Method!")
end

