Feature: Test Guru99 Logins
Test login feature with multiple scenarios

Background:
  Given I am on the homepage

Scenario: Login without email
  When enter blank details for Register
  Then error email shown

Scenario: Login with test email
  When enter details for Register
  Then login details shown
