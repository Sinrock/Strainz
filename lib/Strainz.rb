module Strainz

class StrainSearchCLI
   
  def call
      puts "Welcome to Strainz!"
      puts "You can search strain names, races, effects and flavors by keyword!"
      puts "Which term(s) would you like to search for? (Type exit to quit the program)"
      input = gets.strip
      puts "Gathering the data you requested..."
      query = StrainImporter.new("https://strainapi.evanbusse.com/rvxnT8j/strains/search/all")
      hash = query.parse_json
      #hash.each do |key, value|
      puts hash.select { |k,v| v == "#{input}" }
        #puts "The strain #{key}: has #{value} attributes."
      #puts "Results are so close!" #{hash}
    end
  end
end