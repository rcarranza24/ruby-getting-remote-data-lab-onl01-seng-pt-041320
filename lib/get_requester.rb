require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
  attr_reader :url
  def initialize(url)
    @url = url
  end
  def get_response_body
    uri = URI.parse(url)
    res = Net::HTTP.get_response(uri)
    res.body
  end

  def parse_json
    JSON.parse(get_response_body)
  end
end