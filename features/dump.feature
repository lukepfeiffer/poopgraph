Feature: Dump
  Scenario: New user records new dump
    Given I am on the home page

    When I fill in "Duration" with "5"
    And I fill in "Weight" with "6"
    And I fill in "Kind" with "snake"

    And I fill in "Username" with "mrmicahcooper"
    And I fill in "Email" with "email@example.com"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "passowrd"

    And I press "Submit"

    Then I see "snake"
    And I see "6"
    And I see "5"
