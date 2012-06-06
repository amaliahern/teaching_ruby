Given /^I am on delete page$/ do
  visit '/hash/delete/:key'
end

Then /^I should see an explanation of what delete method does$/ do
  page.should have_content("Welcome to Delete Hash Method!")
end

