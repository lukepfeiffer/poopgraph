Feature: Dump
  Scenario: New user records new dump

    Given I am on the home page

    When I fill in "Duration" with "5"
    And I fill in "Weight" with "6"
    And I fill in "Username" with "mrmicahcooper"
    And I fill in "Email" with "email@example.com"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "passowrd"
    And I press "Submit"

    Then I see "6"
    And I see "5"

  @javascript
  Scenario: User signs in
    Given the following users:
      | username | email            |
      | user     | user@example.com |
    Given I am on the home page
    When I click "Sign in"
    And I fill in "email" with "user@example.com"
    And I fill in "password" with "password"
    Then I should be on my user show page
