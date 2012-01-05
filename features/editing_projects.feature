Feature: Editing projects
    In order to update the project information
    As an user
    I want to be able to do that using an interface


    Background:
        Given there is a project "TextMate 2"
        And I am on the homepage
        When I follow "TextMate 2"
        And I follow "Edit Project"

    Scenario:   Updating a project
        And I fill in "Name" with "TextMate 3"
        And I press "Update Project"
        Then I should see "Project is updated successfully"
        Then I should be on the project page for "TextMate 3"

    Scenario: Updating a project with invalid information
        And I fill in "Name" with ""
        And I press "Update Project"
        Then I should see "Project cannot be updated"