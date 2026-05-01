# API Testing Findings

## Summary
Postman validation of the VALR API suite shows that public market data endpoints are functioning correctly and protected endpoints enforce authentication boundaries.

## Key findings
- Public endpoints returned successful responses in the test collection.
  - `GET /public/pairs` returned `200 OK` with a valid JSON array of trading pairs.
  - `GET /public/btczar/orderbook` returned `200 OK` with structured order book data including ask entries.
  - `GET /public/btczar/trades` returned `200 OK` with trade records and expected fields such as `id`, `price`, `quantity`, and `quoteVolume`.
  - `GET /public/currencies` returned `200 OK` with a large currency list and matching metadata.

- Authentication and authorization boundaries are enforced.
  - Unauthorized calls to protected endpoints returned `401 Unauthorized`.
  - Response body for unauthorized requests contained `{"code":-93,"message":"Unauthorized"}`.

- Error handling is present for invalid input.
  - Invalid or unsupported currency pair requests returned `400 Bad Request` with `{"code":-21,"message":"Unsupported Currency Pair"}`.

## Observations
- Public endpoint responses include security headers such as `x-xss-protection`, `x-content-type-options`, `x-frame-options`, and `strict-transport-security`.
- Caching headers are present on some public endpoints, for example `cache-control: max-age=60,public` on pairs and `cache-control: max-age=30,public` on order book.
- Unauthorized responses are returned consistently, but the payload is wrapped as `text/html;charset=utf-8` for some endpoints rather than JSON content type.

## Recommendations
- Add regression tests for all public market endpoints to verify response schema and field consistency.
- Add negative tests for protected endpoints to confirm `401 Unauthorized` is returned without valid credentials.
- Confirm whether unauthorized response content type should be normalized to `application/json` for API consistency.
