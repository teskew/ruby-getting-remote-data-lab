require 'pry'
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
    attr_accessor :uri
    def initialize(uri)
        @uri = uri
    end

   # URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"

    def get_response_body
      uri = URI.parse(@uri)
      response = Net::HTTP.get_response(uri)
      response.body
    end
def parse_json
    JSON.parse(get_response_body)
   # programs = JSON.parse(self.get_programs)
   # programs.collect do |program|
   # program["people"]  
  end

  
  end

  #get_requester = GetRequester.new('https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json')
  #get_requester.parse_json
  