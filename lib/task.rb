require_relative '.\sw3p.rb'
class Sw3p::Tasks 
	attr_accessor :task 
	 @@all = []
	 def initialize(task:"9-Maint Prog of Struct Control") 
	 	@task = task
	 	@@all << self
	 end 	
end 