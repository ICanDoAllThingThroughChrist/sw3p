require 'pry'
require 'pry-rescue'
require 'pry-stack_explorer'
require 'pry-doc'
require_relative 'sw3p'
class Sw3p::Tracking 
	 attr_accessor :task, :site, :frequency, :reporting, :comments
	 @@all = []
	 def initialize(task:"none", site:"none", frequency: "non", reporting: "none", comments:"None") 
	 	@@all << self
	 end 

	 def task(task:"user_input")
	 	@task = Sw3p::Task.new(send(task: value))
	 end 
	 binding.pry

	 def site(site:"user_input")
	 	@site = Sw3p::Task.new(send(site: value))
	 end 

	 def frequency(frequency:"non")
	 	@frequency = Sw3p::Task.new(send(frequency: value))
	 end 

	 def reporting(reporting:"non")
	 	@reporting = Sw3p::Task.new(send(reporting: value))
	 end 

	 def comments(comments:"non")
	 	@comments = Sw3p::Task.new(send(comments: value))
	 end
end
#self.send("#{key}=", value)
