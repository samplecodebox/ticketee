Feature: Deleting tickets
    In order to remove useless tickets
    As a user
    I want to press a button and make them disappear

    Background:
        Given there is a project "Hello World"
        And that project has a ticket:
        |   title           |   description                             |
        |   hello-ticket1   |   ticket1 has been raised for hello-world |
        Given I am on the homepage
        When I follow "Hello World"
        And I follow "hello-ticket1"

    Scenario: Deleting a ticket
        When I follow "Delete Ticket"
        Then I should see "Ticket has been deleted"
        And I should be on the project page for "Hello World"
        And I should not see "hello-ticket1"