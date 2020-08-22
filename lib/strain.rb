module Strainz
class Strain
    attr_accessor(:id, :race, :effects, :flavors, :name)
    @@all = []

   def initialize(key, hash)
    @id = hash["id"]
    @race = hash["race"]
    @effects = hash["effects"]
    @flavors = hash["flavors"]
    @name = key
    @@all << self
  end

  def self.create_all_strains(api_call)
  api_call.each do |key, data|
    self.new(key, data)
  end 
end

def self.find_by_name(query_name)
@@all.find {|strain| strain.name == query_name}
end

   def self.all
    @@all
   end
end
end