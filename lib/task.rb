class task < Sw3p
	attr_accessor :task 
	 @@all = []
	 def initialize(task:"9-Maint Prog of Struct Control") 
	 	@task = task
	 	@@all << self
	 end 	
end 