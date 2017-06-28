class Frequency < Sw3p
	attr_accessor :frequency
	 @@all = []
	 def initialize(frequency:"Instance") 
	 	@frequency = frequency
	 	@@all << self
	 end 	
end