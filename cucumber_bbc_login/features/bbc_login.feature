Feature: BBC Login

  Scenario: Inputting incorrect username and credentials shows an error
    Given I access the bbc login page
    And I input incorrect username details
    And I input incorrect password details
    When I try to login
    Then I receieve an error for not finding the account

  Scenario: Inputting password credentials that is too short in character length
    Given I access the bbc login page
    And I input incorrect username details
    And I input short character length password details
    When I try to login
    Then I receieve an error for not having a long enough password