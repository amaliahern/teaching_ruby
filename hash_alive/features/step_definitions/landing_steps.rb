Given /^I am on "([^"]*)"$/ do |page_name|
 @page_name = page_name
end

Then /^I should see "([^"]*)"$/ do |msg|
  @msg = msg
end
