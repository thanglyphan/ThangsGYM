Feature: Contact me
  As an already existing user or no user
  I want to contact Thang
  Because I want to ask him about something

  Scenario: Sending email
    Given I'am in need for some support
    When I click the contact page
    And I fill out my questions and information
    Then I want a copy of the email I just sent

  Scenario: Forgot to include my information
    Given I left a field blank
    And I didn't notice
    When I click on "Kontakt meg"
    Then I want to be reminded that I have to fill out the whole form

