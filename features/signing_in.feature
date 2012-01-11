Feature: Signing in
    In order to use the site
    As a user
    I want to be able to sign in

    Scenario: Signing in via Confirmation
        Given there are following users:
            |      email           |   password    |    unconfirmed   |
            |   user@ticketee.com  |   password    |    true          |
        And "user@ticketee.com" opens the email with subject "Confirmation instruction"
        And they click the first link in the email
        Then I should see "Your account was successfully confirmed"
        And I should see "Signed in as user@ticketee.com"


     Scenario: Signing in via login form
        Given there are following users:
        |      email           |   password    |
        |   user@ticketee.com  |   password    |
        And I am on the homepage
        When I follow "Sign in"
        And I fill in "Email" with "user@ticketee.com"
        And I fill in "Password" with "password"
        And I press "Sign in"
        Then I should see "Signed in successfully."

