module Strainz

class CLI

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
        pass_to_strain = flatten_hash(query).flatten
        puts pass_to_strain #Strain.new(pass_to_strain) 
      end

def flatten_hash(h)
  h.each_with_object({}) do |(k, v), h|
    if v.is_a? Hash
      flatten_hash(v).map do |h_k, h_v|
        h["#{k}-#{h_k}".to_s] = h_v
      end
    else 
      h[k] = v
    end
   end
end
end
end