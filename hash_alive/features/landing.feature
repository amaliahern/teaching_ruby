Feature: Showing landing page
  In order to see that Ruby is a great programming language
  As an apprentice
  I want to show landing hash methods page

  Background: 
    Given I am on landing page

  Scenario: Showing landing page
    Then I should see Welcome to Hash Alive!

  Scenario: Creating a hash
    Then I could input pairs key/value

  Scenario: Showing delete method
    Then I should see "Delete Method" in a link

