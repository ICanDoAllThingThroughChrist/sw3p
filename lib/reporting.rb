class reporting < Sw3p
	attr_accessor :reporting
	 @@all = []
	 def initialize(reporting: "Project Manager") 
	 	@reporting = reporting
	 	@@all << self
	 end 	
end