Feature: Registration
    Scenario: Successful registration with valid details
        Given I am on the registration page
        When I enter valid user details
        And I submit the form
        Then I should see a confirmation message
    
    Scenario: Registration with invalid email format
        Given I am on the registration page
        When I enter an invalid email address
        And I submit the form
        Then I should see an error message about the email

    Scenario: Registration with missing required fields
        Given I am on the registration page
        When I leave required fields blank
        And I submit the form
        Then I should see error messages for the missing fields

    Scenario: Registration with weak password
        Given I am on the registration page
        When I enter a weak password
        And I submit the form
        Then I should see an error message about password strength

    Scenario: Error message is shown for duplicate email
        Given I am on the registration page
        When I enter an email address that is already registered
        And I submit the form
        Then I should see an error message about duplicate email