Feature: Show a clear example of an example table

  Scenario Outline: Using an example table can expand your tests and make them more dynamic
    Given I have more than one data row in my example table
    And it includes <name> as a string and <age> as an Integer
    Then I can validate the <name> & <age> are correct

    Examples:
      | name    | age |
      | Dave    | 23  |
      | Tim     | 34  |
      | Nithesh | 22  |
      | Emem    | 21  |
      | Kirpal  | 24  |