Feature: Exercises
  As a user
  I want to be able to view different exercises I can do
  Because I need excercises to my training program

  Scenario: User wants to see exercises for "Biceps"
    Given That I want to see all exercises for my biceps
    When I click on "Øvelser"
    And I click on "Biceps"
    Then I want to be able to see all available exercises on the bicep
    And Additional information about that exercise when I click ON specific exercise
