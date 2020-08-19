#module Flattener
  #def deep_flatten
    #flatten.map do |item|
      #case item
      #when Hash, Array
        #item.deep_flatten
      #else
        #item
      #end
    #end.flatten
  ##end
#end

#class Hash

 ## include Flattener

#end

#class Array

  ##include Flattener

#end

#class Hash

#  include Flattener

#end

#class Array

#  include Flattener

#end