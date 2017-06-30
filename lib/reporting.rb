require_relative 'sw3p'
require_relative 'tracking'

class Sw3p::Reporting
	attr_accessor :reporting
	 @@all = []
	 def initialize(reporting: "Project Manager") 
	 	@reporting = reporting
	 	@@all << self
	 end 	
end