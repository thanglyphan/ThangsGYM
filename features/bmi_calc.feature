Feature: Exercises
  As a user
  I want to be able to calculate my BMI
  Because I feel so fat

  Scenario: User wants to find out the BMI
    Given That I want to find out my BMI
    When I click on "BMI Kalkulator"
    And I type in the requested fields
    Then I want to be able to find out what my BMI really is
