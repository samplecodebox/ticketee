Feature: Viewing projects
    In order to assign ticket to the project
    As a User
    I want to be able to see a list of available projects

    Scenario: Listing all projects
        Given there is a project "TextMate 2"
        And I am on the homepage
        When I follow "TextMate 2"
        Then I should be on the project page for "TextMate 2"
