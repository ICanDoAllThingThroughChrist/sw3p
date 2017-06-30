class Sw3p::Site
	attr_accessor :site 
	 @@all = []
	 def initialize(site:"Northeast Svc Cntr") 
	 	@site = site
	 	@@all << self
	 end 	
end 