class Strain
    attr_accessor :name, :id, :race, :effects, :flavors

   def initialize(*h)
    if h.length == 1 && h.first.kind_of?(Array)
        h.first.each { |k,v| public_send("#{k}=",v) }
    end
  end
end