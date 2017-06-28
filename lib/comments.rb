require_relative '.\sw3p.rb'
class Sw3p::Comments
	attr_accessor :comments
	 @@all = []
	 def initialize(comments:"nil") 
	 	@comments = comments
	 	@@all << self
	 end 	
end