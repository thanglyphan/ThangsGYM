Feature: Group training
  As a user
  I want to be able to go to group training
  Because that is fun and cool

  Scenario: User wants to book a group training
    Given That I want to book a group training event
    When I click on "Book"
    Then I want to be able to go there after

  Scenario: User wants to book for days ahead
    Given That I only want to use my Wednesday for group training
    When I click on "Wednesday"
    Then I want to see all available groups that day
    And I book

  Scenario: User not sure if that group is cool
    Given That I have never been there before
    And I would like to know something more about that group
    When I click on "Show info"
    Then I want full information about that group

  Scenario: User don't know which day it is
    Given That I dont remember which day it is
    And I need to know it quick
    When I click on "Gruppetrening"
    Then I want to see todays groups immedietly

  Scenario: User wants to see all bookings
    Given That I want to see all my recent booking
    And All bookings
    When I click on "Mine bookings"
    Then I want to see all my bookings and my recent booking being seperated