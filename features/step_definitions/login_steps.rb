require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
require 'colorize'

Given(/^I am on the homepage$/) do
  driver.navigate.to "http://demo.guru99.com/"
end

When(/^enter blank details for Register$/) do
  driver.find_element(:name, 'emailid').send_keys(" ")
  driver.find_element(:name, 'btnLogin').click
end

Then(/^error email shown$/) do
  wait = Selenium::WebDriver::Wait.new(:timeout => 15) # seconds

  element = wait.until { driver.find_element(:id => "message9") }
  expect(element.text).to eq('Email ID is not valid')
  puts " Email is Required".red
  #driver.quit
end

When(/^When enter details for Register$/) do
  driver.find_element(:name, 'emailid').send_keys("test@gmail.com")
  driver.find_element(:name, 'btnLogin').click
end

Then(/^Then login details shown$/) do
  puts " Login Success".green
  driver.quit
end
