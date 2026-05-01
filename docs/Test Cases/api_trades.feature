Feature: Public API - Trades
    Scenario: GET /v1/public/BTCZAR/trades returns recent trades
        Given the VALR API is available
        When I send a GET request to /v1/public/BTCZAR/trades
        Then the response should contain a list of recent trades
    
    Scenario: Pagination works as expected
        Given the VALR API is available
        When I send a GET request to /v1/public/BTCZAR/trades with pagination parameters
        Then the response should contain the correct page of trades
    
    Scenario: Invalid parameters return error
        Given the VALR API is available
        When I send a GET request to /v1/public/BTCZAR/trades with invalid parameters
        Then I should receive an error response