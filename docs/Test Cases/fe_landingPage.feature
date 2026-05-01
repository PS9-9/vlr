Feature: Landing Page
    Scenario: Landing page loads successfully
        Given I am on the VALR landing page
        When I visit the landing page
        Then the page should load without errors

    Scenario: Key elements (logo, navigation, call-to-action) are visible
        Given I am on the VALR landing page
        When I visit the landing page
        Then I should see the VALR logo
        And I should see the main navigation menu
        And I should see a call-to-action button
        
    Scenario: Page is responsive on desktop and mobile
        Given I am on the VALR landing page
        When I resize the browser to mobile dimensions
        Then the landing page layout should adjust for mobile
        
    Scenario: No broken links on the landing page
        Given I am on the VALR landing page
        When I check all links on the landing page
        Then all links should be valid and not broken