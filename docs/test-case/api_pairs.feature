Feature: Public API - Pairs
    Scenario: GET /v1/public/pairs returns all trading pairs
        
        Given the VALR API is available
        When I send a GET request to /v1/public/pairs
        Then the response should contain all available trading pairs
    
    Scenario: Invalid request returns appropriate error
        Given the VALR API is available
        When I send a malformed GET request to /v1/public/pairs
        Then I should receive an error response