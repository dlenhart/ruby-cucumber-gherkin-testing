##Addition Steps - dlenhart##
##Useing Scenario Outline in feature file!
## usage e.g. cucumber features/adding.feature

Given(/^first number is "(.*?)"$/) do|arg1|
  #change arg to int
  @a = arg1.to_i
end

And(/^second number is "(.*?)"$/) do|arg2|
  #change arg to int
  @b = arg2.to_i
end

When(/^addition is run$/) do
  @sum = @a + @b
end

Then(/^display the sum$/) do
  puts "Additon of #{@a} and #{@b} equals #{@sum}"
end

Then(/^the sum should also equal the "(.*?)"$/) do|result|
  #change result to int
  @result = result.to_i
  expect(@sum).to eq(@result)
  puts "Expected RESULT = #{@result}".green
end
