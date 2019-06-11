##URL health - dlenhart##
##Useing Scenario Outline to check HTTP status codes with expected result
## usage   cucumber features/healthcheck.feature

require 'net/http'
require 'uri'

module HTTPStepHelper
  def get_status(url)
    #parse param - use uri to determine port for http req.
    uri = URI.parse(url)
    #use uri to determine host and port
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true #use SSL for https requests.
    request = Net::HTTP::Get.new(uri.request_uri)
    response = http.request(request)

    return response.code
  end
end
World HTTPStepHelper

When(/^I test "(.*?)"$/) do|url|
  @url = url
  @response = get_status(@url)
end

Then(/^response should be 200 OK$/) do
  @OK = '200'.to_i
  expect(@response.to_i).to eq(@OK)
  puts "Resonse is #{@response}"
end
