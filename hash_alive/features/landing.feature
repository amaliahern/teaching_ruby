Feature: Showing landing page
  In order to see that Ruby is a great programming language
  As an apprentice
  I want to show landing hash methods page

  Scenario: Showing landing page
    Given I am on landing page
    Then I should see Welcome to Hash Alive!

  Scenario: Showing delete method
    Given I am on landing page
    Then I should see "Delete Method" in a link

