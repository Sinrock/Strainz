module Strainz

class StrainImporter
    def initialize(url)
        @url = url
    end
    def get_response_body
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
    end
    def parse_json
        JSON.parse(get_response_body)
    end

      #def self.matches
       # match = new_strains.select { |key,value| value == "#{input}"}
       # puts match
   # end
end
end