Feature: Calendar
  As a user/non registred user
  I want to use Thangs GYMS's calendar
  Because I want to be a part of a good gym

  Scenario: I want to see the public events
    Given I'am not a logged in user
    When I click on the Calendar
    Then I want to see all public events
    And Adding events for me is disabled

  Scenario: I want to add events to my private calendar
    Given I'am a logged in user
    When I fill out every field Calendar is asking me
    And I click on "Legg til event"
    Then I want to see the event created in my private calendar
    And Not showing in public

  Scenario: I want to delete an event I created
    Given I'am a logged in user
    When I click on my private calendar
    And I click on "Slett event"
    Then I want that event gone

  Scenario: I want to change date and time etc. on my event
    Given I'am a logged in user
    When I click on "Endre event"
    And Fill out everything I need to change
    And Click "Oppdater!"
    Then I want to see the updates on my event

  Scenario: I Want to see comments
    Given I have the urge to read more about an event
    When I click "Se kommentar"
    Then I want to see whats more about this event