Feature: Testing Additions
Test adding multiple numbers

Scenario Outline: Add two numbers
Given first number is "<a>"
And second number is "<b>"
When addition is run
Then display the sum
Then the sum should also equal the "<output>"

Examples:
  | a   | b    | output   |
  | 2   | 2    | 4        |
  | 3   | 7    | 10       |
