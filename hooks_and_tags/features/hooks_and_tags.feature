Feature: hooks and tags
  As a user I wish to see how cucumber uses tags and hooks

  Scenario: Check for a name
    Given I have a before hook in place with name details
    Then I can validate the information in the before hook

  # This is the way to give a scenario a tag
  @test2
  Scenario: An example of using tags
    Given I use a tag
    Then only this test will run


