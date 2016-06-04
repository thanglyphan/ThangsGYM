Feature: Admin
  As an admin
  I want to be able to have extra functions
  Because I want to rule this gym

  Scenario: Manage items CRUD
    Given I'am an admin
    When I click on the Admin page
    And I want to create, update and delete an item
    And With every items I Add
    Then I want the shop to be updated with my updates
    And All subscribers should get an email with information about the item I added

  Scenario: Search for an user
    Given I'am an admin
    When I Want to search for a user
    Then I to see all users information about that user

  Scenario: Delete events
    Given I'am an admin
    When I click on "Slett event" in the public calendar
    Then I want to remove that event from the public calendar

  Scenario: Delete reviews
    Given I'am an admin
    When I click on "Slett kommentar" in the review page
    Then I want that review deleted

  Scenario: A user want to change more coaches
    Given I'am an admin
    When A user contact me and ask for more changes in coach
    Then I want to be able to give that user more changes by searching the username in searchfield
    And I want to change users coach limit

  Scenario: Ban/delelte user
    Given I'am an admin
    When A user is dumb to me
    Then I want to be able to delete that user by searching the username in search field and click "Delete user"

  Scenario: Post to public calendar
    Given I'am an admin
    When I post a event
    Then I want to share my event with all users