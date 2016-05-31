Feature: Shopping_cart
  As a shopper
  I want to put my stuff in the shopping cart
  Because I want to manage items before I check out

  Scenario: User adds item to cart
    Given I'am a logged in user
    When I go to the Item page
    And I click "Legg til i handlekurv"
    Then My cart should have that item
    And My subtotal should increment

  Scenario: User don't want the item
    Given I'am a logged in user
    When I remove the item
    Then My cart should be updated and subtotal should decrement

    Scenario: User has added a coach
      Given I have added a coach from "Treningsprogrammer"
      When I click on "Se handlekurv" or "Legg til i handlekurv" from shopping-page
      Then I want to be able to choose which coach I want
      And See a statistic over all coaches
