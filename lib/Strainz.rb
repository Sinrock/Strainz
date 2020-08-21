module Strainz

class CLI
  def run
    system("clear")
      puts "Welcome to Strainz!".green
      puts "Search for the attributes of any marijuana strain!".light_blue
      puts "What's the name of the strain you'd like info on?".light_blue
      strain_create
      # (type exit to quit)
  end
      def strain_create
        input = gets.chomp.downcase.split.map(&:capitalize).join(' ')
        puts "Gathering the data you requested...".yellow
        query = StrainImporter.new("https://strainapi.evanbusse.com/rvxnT8j/strains/search/all").parse_json
       puts testing = Strain.new(query, "#{input}").strainprint
      end
end
end