module Strainz

class StrainSearchCLI
  def call
      puts "Welcome to Strainz!".green
      puts "You can search strain names, races, effects and flavors by keyword!".light_blue
      puts "Which term(s) would you like to search for? (Type exit to quit the program)".light_blue
      strain_create
  end
      def strain_create
        input = gets.chomp.downcase
        puts "Gathering the data you requested...".yellow
        query = StrainImporter.new("https://strainapi.evanbusse.com/rvxnT8j/strains/search/all").parse_json
        #I'd like this part to iterate over the hash of query and only return the results whose values match the choice of input by the user
        query.each do |k,v|
          puts "#{k} "end
      end   
end
end