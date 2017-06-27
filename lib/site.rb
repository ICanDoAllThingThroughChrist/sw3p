class site < Sw3p
	attr_accessor :site 
	 @@all = []
	 def initialize(site:"Northeast Svc Cntr") 
	 	@site = site
	 	@@all << self
	 end 	
end 