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
  #iterate over the hash we get back
  #for each of the strains in the hash instantiate a new object
  api_call.each do |key, data|
    self.new(key, data)
  end 
end

def self.find_by_name(query_name)
@@all.find {|strain| strain.name == query_name}
end
end

   def strainprint
    puts "Strain Name:".magenta + "#{name}".green
    puts "Strain Id:".magenta + "#{id}".green
    puts "Strain Race:".magenta + "#{race}".green
    puts "Strain Effects:".magenta + "#{effects}".green
    puts "Strain Flavors:".magenta + "#{flavors}".green
   end
   def self.all
    @@all
   end