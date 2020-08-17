module Strainz
    
class Strain
    attr_accessor :id, :name, :race, :effect, :flavor

    @@all = []

    def initialize(arg)#id="none", name="none", race="none", effects="none", flavors="none")
        #@arg = arg
        #@id = id
        #@name = name
        #@race = race
        #@effects = effects
        #@flavors = flavors
        #self.id = id
        #self.name = name
        #self.race = race
        #self.effect = effect
        #self.flavor = flavor
        #final = new_strains.select { |key,value| value == "#{input}"}
        #puts final
        #puts id
        #puts name
        #puts race
        #puts effects
        #puts flavors
    end
    #def parse_json
    #    JSON.parse(@alternative)
    #    #puts self.parse_json
    #end
    
    def self.all
    @@all
  end
  def save
    self.class.all << self
  end

    #new_strains.select { |key,value| value == "#{input}"}
end
end