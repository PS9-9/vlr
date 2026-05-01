Feature: Public API - Order Book

    Scenario: GET /v1/public/BTCZAR/orderbook returns valid order book
        Given the VALR API is available
        When I send a GET request to /v1/public/BTCZAR/orderbook
        Then the response should contain a valid order book
    
    Scenario: Order book integrity check (bids/asks sorted correctly)
        Given the VALR API is available
        When I send a GET request to /v1/public/BTCZAR/orderbook
        Then bids should be sorted in descending order
        And asks should be sorted in ascending order
        
    Scenario: Malformed request returns error
        Given the VALR API is available
        When I send a malformed GET request to /v1/public/BTCZAR/orderbook
        Then I should receive an error response