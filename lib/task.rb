require_relative 'sw3p'
require_relative 'tracking'
class Sw3p::Task 
	attr_accessor :task 
	 @@all = []
	 def initialize(task:"nil") 
	 	@task = task
	 	@@all << self
	 end 	
end 