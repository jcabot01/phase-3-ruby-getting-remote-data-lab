require 'open-uri'
require 'net/http'
require 'json'

class GetRequester
  def initialize(url) #GetRequester.new(passed-in url)
    @url = url  #we save the passed in url to a @url variable that we can reference later 
  end
  
  def get_response_body   #GET method
    uri = URI.parse(@url)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  def parse_json #parse the response using JSON.parse into array of hashes
    JSON.parse(get_response_body)
  end

end
