class Strain
  include Strainz
    attr_accessor :id, :race, :effects, :flavors, :name
    @@all = []

   def initialize(hash, key)
    if hash.has_key?(key)
    fetch = hash.fetch(key)
    #if key not found return as much
    @id = fetch.fetch("id")
    @race = fetch.fetch("race")
    @effects = fetch.fetch("effects")
    @flavors = fetch.fetch("flavors")
    @name = key
    @@all << self
    else puts "No Strain by that name exists. As far as I know of.".red
   end
  end

   def strainprint
    puts "Strain Name:".magenta + "#{name}".green
    puts "Strain Id:".magenta + "#{id}".green
    puts "Strain Race:".magenta + "#{race}".green
    puts "Strain Effects:".magenta + "#{effects}".green
    puts "Strain Flavors:".magenta + "#{flavors}".green
   end
   def self.all
    @@all
   end
  end