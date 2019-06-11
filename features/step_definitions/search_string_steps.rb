require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
require 'colorize'

When(/^I go to "(.*?)"$/) do|url|
  driver.navigate.to url
end

Then(/^the page should contain "(.*?)"$/) do|text|
  driver.page_source.should include text
  #expect(driver.page).to have_content(text)
end
