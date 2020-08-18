module Strainz
    
class Strain
    attr_accessor :id, :name, :race, :effects, :flavors

     @@all = []

  def initialize(id, name, race, effects, flavors)
    @id = id
    @name = name
    @race = race
    @effects = effects
    @flavors = flavors    
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end
end
end