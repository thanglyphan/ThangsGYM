Feature: Logout
  As a user
  I want to be able to log out of Thangs Gym
  Because I don't want to be Thangs GYM-raped

  Scenario: User wants to logout
    Given That I want to leave Thangs GYM for the day
    When I click on "Logg ut"
    Then I want to be redirected to the login page
    And I am logged out
