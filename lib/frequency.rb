require_relative '.\sw3p.rb'
class Sw3p::Frequency 
	attr_accessor :frequency
	 @@all = []
	 def initialize(frequency:"nil") 
	 	@frequency = frequency
	 	@@all << self
	 end 	
end