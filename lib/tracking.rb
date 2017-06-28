class Tracking < Sw3p
	 attr_accessor :task, :site, :frequency, :reporting, :comments
	 @@all = []
	 def initialize(task:"none", site:"none", frequency: "non", reporting: "none", comments:"None") 
	 	@@all << self
	 end 

	 def task(task:"user_input")
	 	@task = Sw3p::Task.new(send("{#{task:}=", value)
	 	binding.pry
	 end 


	 def site(site:"user_input")
	 	@site = Sw3p::Task.new(send("{#{site:}=", value)
	 end 

	 def frequency(frequency:"non")
	 	@frequency = Sw3p::Task.new(send("{#{frequency:}=", value)
	 end 

	 def reporting(reporting:"non")
	 	@reporting = Sw3p::Task.new(send("{#{reporting:}=", value)
	 end 

	 def comments(comments:"non")
	 	@reporting = Sw3p::Task.new(send("{#{reporting:}=", value)
	 end
end
#self.send("#{key}=", value)
