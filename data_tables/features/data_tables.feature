Feature: data tables example

  Scenario: I am able to iterate through a data table
    Given I have a data table
      | Dave | 24 |
      | Jill | 30 |
    Then I am able to print out each name and age to the command line