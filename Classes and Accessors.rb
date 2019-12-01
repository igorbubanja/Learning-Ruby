#In Ruby, class variables cannot be accesses directly. Instead get and set functions must be defined.
#Classes can have many instance variables, and defining get and set functions for all of them can be tedious. For this reason, Ruby provides accessors as a convinient alternative.

class Spaceship
  attr_accessor :destination  #An accessor can be called outside the class. I can be read and set.
  attr_reader :fuel_level #A reader is a variable that can only be read, and not modified. It is like a variable with only a get method.
  attr_writer :name #A writer is a variable that can be only be set but not read. It is like a variable with only a set method.
  
end


class Spaceship2 #This class is what is happening behind the scenes with the first class. Notice that fuel_level only hads a getter, name only has a setter, and destination has both
	def destination
	  @destination #An '@' symbol denotes an instance variable
	end
	
	def destination=(new_destination) #A function ending with a '=' is usually a set function
      @destination = new_destination
	end
	
	def fuel_level
	  @fuel_level
	end
	
	def name=(new_name)
	  @name = new_name
	end
	
end
	

ship = Spaceship.new  #Note that you don't need to write the '()' after the function name if the function doesn't take any arguments
ship.destination = "Earth"
puts ship.destination

ship2 = Spaceship2.new
ship2.destination=("Mars")
puts ship2.destination

