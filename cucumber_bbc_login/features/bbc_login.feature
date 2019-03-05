Feature: BBC Login

  Scenario: Inputting incorrect username and credentials shows an error
    Given I access the bbc login page
    And I input incorrect username details
    And I input incorrect password details
    When I try to login
    Then I receieve an error for not finding the account

  Scenario: Inputting password credentials that is too short in character length shows an error
    Given I access the bbc login page
    And I input incorrect username details
    And I input short character length password details
    When I try to login
    Then I receieve an error for not having a long enough password

  Scenario: Inputting the incorrect credentials and the valid username shows an error
    Given I access the bbc login page
    And I input correct username details
    And I input the incorrect password details
    When I try to login
    Then I receieve an error for not having the right password for that account

  Scenario: Inputting a username that is too short shows an error
    Given I access the bbc login page
    And I input a username thats too short
    And I input the incorrect password details
    When I try to login
    Then I receieve an error for having a username too short

  Scenario: Inputting password credentials that is to long shows an error
    Given I access the bbc login page
    And I input incorrect username details
    And I input a password with too many characters
    When I try to login
    Then I receieve an error for having a password too long

  Scenario: Inputting password credentials with only letters
    Given I access the bbc login page
    And I input incorrect username details
    And I input a password using only letters
    When I try to login
    Then I recieve an error asking me to include something other than just letters

  Scenario: Inputting password credentials with only numbers
    Given I access the bbc login page
    And I input incorrect username details
    And I input a password using only numbers
    When I try to login
    Then I recieve an error asking me to include something other than just numbers


