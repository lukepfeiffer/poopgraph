@javascript
Feature: Dump
  Scenario: New user records new dump

    Given I am on the home page

    When I fill in "Duration" with "5"
    And I fill in "Weight" with "6"
    And I click the "nut" poop type
    And I fill in "Username" with "mrmicahcooper"
    And I fill in "Email" with "email@example.com"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "password"
    And I press "Submit"

    Then I see "6"
    And I see "5"


  Scenario: New user records invalid new dump
      Given I am on the home page
      When I press "Submit"
      Then I see "Username can't be blank"
      And I see "Email is invalid"
      And I see "Password can't be blank"
      And I see "Password confirmation doesn't match Password"
      And I see "Type can't be blank"

  Scenario: Existing user records dump
    Given the following user:
      | username | Joe             |
      | password | password        |
    And I am on the home page
    When I fill in "Duration" with "5"
    And I fill in "Weight" with "6"
    And I click "Sign in"
    And I fill in "Username or email" with "Joe"
    And I fill in "Password" with "password"
    And I press "Submit"
    Then I see "6"
    And I see "5"
