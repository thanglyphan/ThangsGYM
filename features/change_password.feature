Feature: Change password
    As a user
    I want to be able to have control over my account
    Because I have been hacked

  Scenario: User wants to change the password
    Given I'am a logged in user
    When I type in all requested fields
    And I click "Lagre"
    Then I want an email confirmation about my password change
