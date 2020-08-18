module Strainz

class StrainSearchCLI

  def run
      puts "Welcome to Strainz!".green
      puts "You can search strain names, races, effects and flavors by keyword!".light_blue
      puts "Which term(s) would you like to search for?".light_blue
      strain_create 
  end
      def strain_create
        input = gets.chomp.downcase
        puts "Gathering the data you requested...".yellow
        query = StrainImporter.new("https://strainapi.evanbusse.com/rvxnT8j/strains/search/all").parse_json
        puts strip_hash_values(query)
      end

def strip_hash_values(hash)
        hash.each do |k,v|
          case v
          when String
            v.strip!
          when Array
            v.each {|vv| vv.strip!}
          when Hash
            strip_hash_values(v)
          end
        end
      end
    
        #hashed = Strain.new("#{query}").strip_hash_values
        #puts hashed
        #puts JSON.parse(JSON.dump(query))
        #puts Strain.new("#{query}")
        #make_new = Strain.new("#{query}").display 
end
end