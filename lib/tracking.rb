require 'pry'
require 'pry-rescue'
require 'pry-stack_explorer'
require 'pry-doc'
require_relative 'sw3p'
require_relative 'cli'
class Sw3p::Tracking 
	 attr_accessor :task, :site, :frequency, :reporting, :comments
	 @@all = []
	 def initialize(task:"nil", site:"nil", frequency: "nil", reporting: "nil", comments:"nil") 
	 binding.pry
	    if task != nil
	    	task = self.task(task: 'user_input')
	    end 
	 	@@all << self
	 end 
	#http://blog.jayfields.com/2007/04/ruby-assigning-instance-variables-in.html
	 def task=(task: 'user_input')
	 	@task=(Sw3p::Task.new(send(task: value)))
	 end 

	 def site=(site:"user_input")
	 	@site = Sw3p::Task.new(send(site: value))
	 end 

	 def frequency=(frequency:"non")
	 	@frequency = Sw3p::Task.new(send(frequency: value))
	 end 

	 def reporting=(reporting:"non")
	 	@reporting = Sw3p::Task.new(send(reporting: value))
	 end 

	 def comments=(comments:"non")
	 	@comments = Sw3p::Task.new(send(comments: value))
	 end
end
#self.send("#{key}=", value)
