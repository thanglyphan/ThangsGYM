Feature: Registration
  As a new user
  I want to register to Thangs Gym
  Because I want to use Thangs GYM to the fullest

  Scenario: Registraion
    Given I'am a new user
    When I go to the Regitraion page
    And I type in my information
    And I click "Registrer"
    Then I want to use all features Thangs GYM can offer

  Scenario: Registration with existing email
    Given I'am a new user
    When I enter an already existing email or username
    Then I Want to see an error

