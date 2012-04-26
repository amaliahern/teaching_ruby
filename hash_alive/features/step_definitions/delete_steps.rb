When /^I select "([^"]*)"$/ do |link|
  @page_name = link
end


Then /^I should go "([^"]*)"$/ do |page_name|
    pending # express the regexp above with the code you wish you had
end
