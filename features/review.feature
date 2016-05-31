Feature: Review
  As a user
  I want to give Thangs GYM a review
  Because I want to be a part of a good gym


  Scenario: See all reviews
    Given I'am a logged out user
    When I click "Legg igjen en beskjed"
    Then I want to see all reviews that has been written
    And Not be able to delete any

  Scenario: Add review
    Given I'am a logged out user
    When I click "Legg til en tilbakemelding"
    And Write a review
    Then I Want my name to be "Guest"

