Feature: Markets Overview
    Scenario: All available markets are listed
        Given the VALR API is available
        When I visit the markets overview page
        Then I should see a list of all available markets

    Scenario: Market data is accurate and up-to-date
        Given the VALR API is available
        When I view the markets overview page
        Then the displayed market data should match the latest API data

    Scenario: Filtering/searching markets works as expected
        When I use the filter or search function
        Then only matching markets should be displayed