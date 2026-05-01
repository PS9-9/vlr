Feature: Private API - Authentication Boundary
    Scenario: Access private endpoint without authentication returns 401
        Given the VALR API is available
        When I send a GET request to /v1/account/balances without authentication
        Then I should receive a 401 Unauthorized response
    
    Scenario: Access private endpoint with malformed headers returns 401
        Given the VALR API is available
        When I send a GET request to /v1/account/balances with malformed authentication headers
        Then I should receive a 401 Unauthorized response
    
    Scenario: Use invalid HTTP method on private endpoint returns error
        Given the VALR API is available
        When I send a GET request to /v1/orders/market (which expects POST)
        Then I should receive an error response
        
    Scenario: No sensitive information is leaked in error responses
        Given the VALR API is available
        When I send an invalid request to a private endpoint
        Then the error response should not contain sensitive information