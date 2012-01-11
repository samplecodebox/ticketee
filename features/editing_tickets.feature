Feature: Editing tickets
    In order to update ticket information
    As a  user
    I want to a form to edit tickets

    Background:
        Given there is a project "Hello World"
        And that project has a ticket:
        |   title           |   description                     |
        |   hello-ticket1   |   hello world ticket is raised    |
        Given I am on the homepage
        When I follow "Hello World"
        And I follow "hello-ticket1"
        When I follow "Edit Ticket"


   Scenario: Updating a ticket
        When I fill in "Title" with "hello-ticket"
        And I fill in "Description" with "hello world ticket is raised again"
        And I press "Update Ticket"
        Then I should see "Ticket has been updated"
        And I should see "hello-ticket"
        And I should not see "hello-ticket1"

   Scenario: Updating a ticket with invalid information
        When I fill in "Title" with ""
        And I fill in "Description" with "hello"
        And I press "Update Ticket"
        Then I should see "Ticket has not been updated"
        And I should see "Title can't be blank"
        And I should see "Description is too short"