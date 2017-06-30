require_relative 'sw3p'
require_relative 'tracking'

class Sw3p::Comments
	attr_accessor :comments
	 @@all = []
	 def initialize(comments:"nil") 
	 	@comments = comments
	 	@@all << self
	 end 	
end