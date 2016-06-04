Feature: Profile
  As a user
  I want to be able to see my profile with my picture
  Because I want to use this site

  Scenario: View profile
    Given I'am a logged in user
    When I click "Profil"
    Then I want to be able to see the information about my self

  Scenario: Add profile picture
    Given I'am a logged in user
    And I'am logged in with my facebook account
    When I click "Hent profilbilde fra facebook"
    Then I want my picture to be updated with my facebook profilpicture

  Scenario: Show my pictures
    Given I'am a logged in user
    When I click on "Vis dine bilder"
    Then I want to be redirected to my pictures page