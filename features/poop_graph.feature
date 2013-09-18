Feature: Poop graph
  Scenario: user views poop table
  Given 1 user
  And that user has the following dumps:
    | duration | kind  | weight | color |
    | 5.5      | snake | 5      | green |
    | 5.5      | nut   | 5      | red   |
  When I go to the graph page
  Then I should see "snake"
  And I should see "nut"
