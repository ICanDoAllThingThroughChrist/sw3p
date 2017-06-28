class tracking < Sw3p
	attr_accessor :task, :site, :frequency, :reporting, :comments
	 @@all = []
	 def initialize(task:"none", site:"none", frequency: "non", reporting: "none", comments:"None") 
	 	@@all << self
	 end 

	 def task(task:"non")
	 	@task = Sw3p::Task.new(send("{#{task:}=", value)
	 end 	
end
#self.send("#{key}=", value)
