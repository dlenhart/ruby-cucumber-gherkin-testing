Given(/^I have variable a$/) do
  @a = 100
end

And(/^I have variable b$/) do
  @b = 100
end

When(/^I multiply a and b$/) do
  @val = @a * @b
end

Then(/^I display the Result$/) do
  puts "Mulitplication of #{@a} and #{@b} is #{@val}"
end
