
Feature: Public API - Currencies
    Scenario: GET /v1/public/currencies returns valid list
        Given the VALR API is available
        When I send a GET request to /v1/public/currencies
        Then the response should contain a list of supported currencies

    Scenario: Response schema matches documentation
        Given the VALR API is available
        When I send a GET request to /v1/public/currencies
        Then the response should match the documented schema

    Scenario: Response time is within acceptable limits
        Given the VALR API is available
        When I send a GET request to /v1/public/currencies
        Then the response time should be less than 2 seconds