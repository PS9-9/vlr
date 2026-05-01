Feature: Public API - All Market Summaries

    Scenario: GET /v1/public/marketsummary returns all market summaries
        Given the VALR API is available
        When I send a GET request to /v1/public/marketsummary
        Then the response should contain market summaries for all pairs

    Scenario: Schema validation for each market summary
        Given the VALR API is available
        When I send a GET request to /v1/public/marketsummary
        Then each market summary in the response should match the documented schema