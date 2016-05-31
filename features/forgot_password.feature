Feature: Forgot password
  As a user
  I want to be able to get access with my username when I forgot my password
  Because I want to use this site

  Scenario: User forgot the password
    Given I'am a logged out user
    When I click "Glemt passord"
    And Type in my email adress
    Then I want to be able to retrieve my password
