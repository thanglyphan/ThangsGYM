Feature: Shopping
  As a logged in user
  I want to see all items Thangs GYM has to offer me
  Because I might want to buy something

  Scenario: Show all items existing
    Given I'am a logged in user
    When I click on "Treningsprogrammer"
    Then I want to see all available items in store
    And I might want to buy something or add to cart

  Scenario: User wants a coach with the program
    Given I'am a logged in user
    And I want a coach to coach me
    When I mark "need coach?"
    Then I want to choose coach when I go to my shopping cart