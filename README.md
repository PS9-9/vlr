# VALR Testing Assessment

This repository contains a QA assessment for VALR, focused on validating the public site, trading workflows, API behavior, and business registration.

## Tools Used

- Postman API Testing
- Github for source control and sharing
- Copilot for Repo Support and Documentation
- Claude AI for Research and Context

## Testing scope

- Exploratory testing for landing page usability and business registration flows
- Front-end verification of key pages and guest trading behavior
- API boundary testing for authentication and market data
- Bug reporting for regulatory and user experience issues

## What I tested

### Exploratory charters
- **Landing Page:** Confirmed the page loads successfully, core navigation and CTAs display correctly, and email validation works.
- **Business Registration:** Checked business signup form validation and error handling. Found that empty fields are blocked, but email and mobile verification are missing.

### Front-end tests
- **Landing Page:** Page load, logo/navigation/CTA visibility, responsiveness, and link validation.
- **Trading Page:** BTC/ZAR market data visibility for guest users, real-time order book updates, trade history updates, and login prompt on order attempts.
- **Registration/Login:** Defined scenarios for user registration and login flow validation.

### API tests
- **Authentication boundary:** Verified unauthorized access returns 401, malformed authentication returns 401, invalid HTTP methods return errors, and error responses do not expose sensitive data.
- **Public endpoints:** Validated currency listing, market summary, order book, trading pairs, and trade history endpoints. Findings documented in [docs/api-testing/api-testing.md](docs/api-testing/api-testing.md).

### Bug reporting
- Documented a business registration issue where contact information is accepted without OTP verification.
- Captured evidence in `docs/bug-report/evidence/businessRegistration/`.
- Provided a structured report with severity, impact, and reproducibility details.

## Observations

- A critical gap exists in business registration verification, which should be addressed for KYC/compliance reasons.

## Items not completed/ could have been tested
- Creation of a script for the X-VALR-SIGNATURE
- More Aggressive negative testing
- Exploration of more links on the public website
- Adding automation
