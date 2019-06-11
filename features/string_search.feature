Feature: String Search
I want to be able to check a webpage for a given string

Scenario Outline: Simple String Search
When I go to "<url>"
Then the page should contain "<text>"

Examples:
  | url                        | text         |
  | https://drewlenhart.com    | programming  |
  | https://www.google.com     | About  |
