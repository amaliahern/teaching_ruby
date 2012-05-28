Given /^I am on delete page$/ do
  visit '/hash/delete/:key'
end

Then /^I should see Welcome to Delete Hash Method!$/ do
  page.should have_content("Welcome to Delete Hash Method!")
end

Then /^I should see an explanation of what delete method does$/ do
    pending # express the regexp above with the code you wish you had
end
