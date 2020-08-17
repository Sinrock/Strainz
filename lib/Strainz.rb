module Strainz

class StrainSearchCLI
  def call
      puts "Welcome to Strainz!".green
      puts "You can search strain names, races, effects and flavors by keyword!".light_blue
      puts "Which term(s) would you like to search for? (Type exit to quit the program)".light_blue
      #input = gets.strip
      #puts "Gathering the data you requested...".yellow
      strain_create
      #matches
  end

      def strain_create
        input = gets.strip
        puts "Gathering the data you requested...".yellow
        query = StrainImporter.new("https://strainapi.evanbusse.com/rvxnT8j/strains/search/all").parse_json
        query.each do |k,v|
          if v == "#{input}"
          puts "#{k}"end end
        #new_strains = Strain.new("#{query}").save
        #puts JSON.parse(new_strains)#.parse_json #.select { |k,v| v == "#{input}"}
      end   
end
end