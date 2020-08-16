module Strainz
    
class Strain
    #attr_accessor :id, :name, :race, :effect, :flavor

    @@all = []

    def initialize#(id, name, race, effect, flavor)
        #@id = id
        #@name = name
        #@race = race
        #@effect = effect
        #@flavor = flavor
        #@@all << self
    end
    def self.all
        @@all
    end
end
end