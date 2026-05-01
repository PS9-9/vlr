Task 1.2
Feature: Public Trading Page
    https://www.valr.com/en/exchange/BTC/ZAR
    Scenario: BTC/ZAR market data is visible without login
        Given I am a guest user
        When I visit the BTC/ZAR trading page
        Then I should see the current market price
        And I should see the order book
        And I should see the trade history

    Scenario: Order book updates in real time
        Given I am a guest user
        When I view the order book on the trading page
        Then the order book should update automatically

    Scenario: Trade history is displayed and updates
        Given I am a guest user
        When I view the trade history on the trading page
        Then the trade history should update automatically

    Scenario: Attempt to place order prompts for login
        Given I am a guest user
        When I attempt to place an order as a guest
        Then I should be prompted to log in or register