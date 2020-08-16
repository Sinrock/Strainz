require_relative '../config/environment.rb'

class Strain
    attr_accessor :id, :name, :race, :effect, :flavor

    @@all = []

    def initialize(id, name, race, effect, flavor)
        @id = id
        @name = name
        @race = race
        @effect = effect
        @flavor = flavor
    end
def self.all
    @@all
end



end