Feature: All my added pictures
  As a shopper
  I want to put my upload my pictures to have a "diary"
  Because I want to check my body transformation

  Scenario: User wants to log the training
    Given I have much fat
    And Want to log my journey
    When I click on "Legg til nytt bilde"
    And I select the picture
    Then I want to be able to see my uploaded pictures
    And I want to be able to delete/update this picture