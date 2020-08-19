module Strainz
    
class Strain
    attr_accessor :id, :name, :race, :effects, :flavors

  def initialize(id, name, race, effects, flavors)
    @id = id
    @name = name
    @race = race
    @effects = effects
    @flavors = flavors    
    save
  end
end
end