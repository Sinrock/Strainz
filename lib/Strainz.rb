
class Strains
  
  def call
    input = ""
    while input != "quit"
      puts "Welcome to Strainz!"
      puts "You can search strain names, races, effects and flavors by keyword!"
      puts "You can search for 'pain' or 'nausea' to have a list of all strains that treat those symptoms!"
      puts "You can also search for 'coffee' or 'earthy' to see a list of all strains with those flavors!"

      input = gets.strip

    def import
    new_import = StrainImporter.new('http://strainapi.evanbusse.com/rvxnT8j/strains/search/all')
    puts new_import
  end
  end
end

def find_by_attributes

end
end