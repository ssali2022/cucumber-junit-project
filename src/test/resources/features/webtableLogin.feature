Feature: User should be able to login with valid credentials

  Background:
    Given user is on the login page of webtable app
  @smoke
  Scenario: Login scenario with 1 parameter
    When user enters username "Test"
    And user enters password "Tester"
    And user clicks to login button
    Then user should see url contains orders


  Scenario: Login scenario with 2 parameters
    When user enters username "Test" password "Tester" and logins
    Then user should see url contains orders


  Scenario: Login scenario with data table
    When user enters below credentials
      | username     | Test   |
      | password     | Tester |
    Then user should see url contains orders