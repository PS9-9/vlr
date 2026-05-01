Feature: Public API - Market Summary

    Scenario: GET /v1/public/BTCZAR/marketsummary returns correct data
        Given the VALR API is available
        When I send a GET request to /v1/public/BTCZAR/marketsummary
        Then the response should contain the correct market summary data

    Scenario: Invalid currency pair returns error
        Given the VALR API is available
        When I send a GET request to /v1/public/INVALIDPAIR/marketsummary
        Then I should receive an error response