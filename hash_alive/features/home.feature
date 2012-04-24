Feature: view pages

  Scenario: Home page
    Given I am on the home page
    Then I should see "Welcome to Hash-Alive!"
    And I should see "Choose a hash method"
    And I should see "Delete Method"
    And I should see "Each_Pair Method"
    And I should see "Each_Value Method"
    And I should see "Fetch Method"


