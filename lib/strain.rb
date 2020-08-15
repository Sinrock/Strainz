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
end