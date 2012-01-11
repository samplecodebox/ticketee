
Feature: Viewing tickets
    In order to view list of tickets for a project
    As a user
    I want to see them on that project's page

    Background:
        Given there is a project "Hello World"
        And that project has a ticket:
        |   title           |   description                     |
        |   hello-ticket1   |   hello world ticket is raised    |
        And there is a project "Hello World 2"
        And that project has a ticket:
        |   title           |   description                       |
        |   hello-ticket2   |   hello world 2 ticket is raised    |
        And I am on the homepage

        Scenario: Viewing tickets for a given project
            When I follow "Hello World"
            Then I should see "hello-ticket1"
            And I should not see "hello-ticket2"
            When I follow "hello-ticket1"
            Then I should see "hello-ticket1" within "#ticket h2"
            And I should see "hello world ticket is raised"

            When I follow "Ticketee"
            And I follow "Hello World 2"
            Then I should see "hello-ticket2"
            And I should not see "hello-ticket1"
            When I follow "hello-ticket2"
            Then I should see "hello-ticket2" within "#ticket h2"
            And I should see "hello world 2 ticket is raised"