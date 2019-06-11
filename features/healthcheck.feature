Feature: Test URLS
Make HTTP request for response code.

Scenario Outline: Test URLs
When I test "<url>"
Then response should be 200 OK

Examples:
  | url                        |
  | https://drewlenhart.com    |
  | https://google.com         |
  | https://www.mozilla.org    |
