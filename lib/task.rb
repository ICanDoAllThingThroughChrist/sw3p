require_relative '.\sw3p.rb'
class Sw3p::Tasks 
	attr_accessor :task 
	 @@all = []
	 def initialize(task:"nil") 
	 	@task = task
	 	@@all << self
	 end 	
end 