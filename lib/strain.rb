module Strainz
    
class Strain
    attr_accessor :id, :name, :race, :effects, :flavors

    @@all = []

    def initialize(arg)
        
        @id = id
        @name = name
        @race = race
        @effects = effects
        @flavors = flavors
        @@all << self
    end
    def self.all
        @@all
    end
    def save
        self.class.all << self
    end
end
end
 #new_strains.select { |key,value| value == "#{input}"}