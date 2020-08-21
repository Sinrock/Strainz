class Strain
    attr_accessor :id, :race, :effects, :flavors, :name
    @@all = []

   def initialize(hash, key)
    hash.each do |name, data|
      data.each.to_s do |attribute, value| 
        value.each do |attribute_two, value_two|
        end
      end
    end
    end
    @id = id
    @race = race
    @effects = effects
    @flavors = flavors
    @name = name
    @@all << self
   end

   def strainprint
    puts race
   end
   def self.all
    @@all
   end
  end

    #def initialize(*h)
   # if h.class == (Array)
   #     h.first.each { |k,v| public_send("#{k}=",v) }
   # end
  #end

  #def findmatchingstrains(array)
  #  located_strain = array.detect {||}