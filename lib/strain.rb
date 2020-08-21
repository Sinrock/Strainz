class Strain
  include Strainz
    attr_accessor :id, :race, :effects, :flavors, :name
    @@all = []

   def initialize(hash, key)
    fetch = hash.fetch(key)
    @id = fetch.fetch("id")
    @race = fetch.fetch("race")
    @effects = fetch.fetch("effects")
    @flavors = fetch.fetch("flavors")
    @name = key
    @@all << self
   end

   def strainprint
    puts "Strain Name:".magenta + "#{name}".green
    puts "Strain Id:".magenta + "#{id}".green
    puts "Strain Race:".magenta + "#{race}".green
    puts "Strain Effects:".magenta + ":#{effects}".green
    puts "Strain Flavors:".magenta + "#{flavors}".green
   end
   def self.all
    @@all
   end
  end