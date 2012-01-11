Feature: Creating Tickets
    In order to create ticket for a project
    As a user
    I want to be able to select a project and do that

    Background:
        Given there is a project "Hello World"
        And I am on the homepage
        When I follow "Hello World"
        And I follow "New Ticket"

    Scenario: Creating new ticket
        When I fill in "Title" with "Ticket1"
        And I fill in "Description" with "Description of Ticket1"
        And I press "Create Ticket"
        Then I should see "Ticket has been created"

    Scenario: Creating ticket without proper data
        When I press "Create Ticket"
        Then I should see "Ticket has not been created"
        And I should see "Title can't be blank"
        And I should see "Description can't be blank"

    Scenario: Description should be longer than 10 characters
        When I fill in "Title" with "Hello World"
        And I fill in "Description" with "Hello"
        And I press "Create Ticket"
        Then I should see "Ticket has not been created"
        And I should see "Description is too short"


    