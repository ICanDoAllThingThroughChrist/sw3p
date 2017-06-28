class Comments < Sw3p
	attr_accessor :comments
	 @@all = []
	 def initialize(comments:"None") 
	 	@comments = comments
	 	@@all << self
	 end 	
end