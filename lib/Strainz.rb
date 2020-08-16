require_relative '../config/environment.rb'
class Strains
   
  def call
      puts "Welcome to Strainz!"
      puts "You can search strain names, races, effects and flavors by keyword!"
      puts "Which term(s) would you like to search for?"
      input = gets.strip
      puts "Gathering the data you requested..."
      
    new_import = StrainImporter.new("http://strainapi.evanbusse.com/rvxnT8j/strains/search/all")
    sorted = new_import.collect { |s| "#{s[:name]}: #{s[:id]}: #{s[:race]}: #{s[:flavors]}: #{s[:effects]}"}
    puts sorted.parse_json
  end
end