Feature: User
  As a user
  I want to be able to navigate through Thangs GYM and use all functions
  Because I want to be a member of Thangs GYM

  Scenario: User wants check out the site before joining
    Given I'am not a registered user
    When I click on anything in the top navigation bar
    Then I should be redirected to the login page

  Scenario: User has just logged in
    Given I'am an existing user
    When I click log in
    Then Redirect me to "Home"
    And I see bunch of pictures from Thangs GYM instagram

