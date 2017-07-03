require_relative 'sw3p'
require_relative 'tracking'

class Sw3p::Site < ActiveRecord::Base
	attr_accessor :site 
	 @@all = []
	 def initialize(site:"Northeast Svc Cntr") 
	 	@site = site
	 	@@all << self
	 end 	
end 