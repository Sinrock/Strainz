module Strainz

class CLI
  include DeepFind

  def run
    system("clear")
      puts "Welcome to Strainz!".green
      puts "You can search strain names, races, effects and flavors by keyword!".light_blue
      puts "Which term(s) would you like to search for?".light_blue
      strain_create
      
  end
      def strain_create
        input = gets.chomp.downcase
        puts "Gathering the data you requested...".yellow
        query = StrainImporter.new("https://strainapi.evanbusse.com/rvxnT8j/strains/search/all").parse_json
        #pass_to_strain = flatten_hash(query).flatten
        #puts pass_to_strain #Strain.new(pass_to_strain)
        #puts nested_hash_value(query,"#{input}")
       #puts deep_find(query, "#{input}", nested_key: "value")
       #puts recursive(query, "#{input}")
       #puts query.has_value?("#{input}")
       puts testing = Strain.new(query, "#{input}").strainprint
      end

  def recursive(hash, key)
    return hash[key] if key != Hash
    if key.is_a? Hash
      key.each do |(k, v), h|
        if v.is_a? Hash 
          h.each do |(h_k, h_v), h_h|
          end
          else
            hash[key] = v
          end
        end
      end
  end
  
  def search_hash(hash, key)
    return hash[key] if hash.assoc(key)
    hash.delete_if{|key, value| value.class != Hash}
    new_hash = Hash.new
    hash.each_value {|values| new_hash.merge!(values)}
    unless new_hash.empty?
    search_hash(new_hash, key)
  end
end
#def nested_hash_value(obj,key)
#  if obj.respond_to?(:key?) && obj.key?(key)
#    obj[key]
#  elsif obj.respond_to?(:each)
#    r = nil
#    obj.find{ |*a| r=nested_hash_value(a.last,key) }
#    r
#  end
#end


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