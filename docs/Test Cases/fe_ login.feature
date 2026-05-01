Feature: Login
    Scenario: Successful login with valid credentials
        Given I am on the login page
        When I enter valid credentials
        And I submit the form
        Then I should be logged in successfully
    
    Scenario: Login with invalid password
        Given I am on the login page
        When I enter a valid email and an invalid password
        And I submit the form
        Then I should see an error message about invalid credentials
    
    Scenario: Login with unregistered email
        Given I am on the login page
        When I enter an unregistered email
        And I submit the form
        Then I should see an error message about invalid credentials
    
    Scenario: Error message is clear and does not leak sensitive info
        Given I am on the login page
        When I enter invalid credentials
        And I submit the form
        Then the error message should not reveal sensitive information