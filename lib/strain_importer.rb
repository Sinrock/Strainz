require_relative 'environment.rb'

class StrainImporter
    def initialize(url)
        @url = url
    end

    def get_response_body
        #uri = URI.parse(http://strainapi.evanbusse.com/rvxnT8j/strains/search/all)
        
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        JSON.parse(get_response_body)
    end
end