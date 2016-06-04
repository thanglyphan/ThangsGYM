Feature: Subscription and unsubscription
  As a user
  I want to be able to get the latest new
  Because I want to be updated


  Scenario: Subscribing and unsubscribe
    Given I'am a logged in user
    When I click on "Subscribe"
    Then I want all updates when Thang adds a new item
    And I want to see the unsubscribe button