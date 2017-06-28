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
	 	local_variables.each do |k|
	 		if k == task
	 		v = eval(k.to_s)
	 		instance_variable_set(Sw3p::Tasks.new.send(k= "value")) unless v.nil?
	 		elsif  k == frequency
	 		v = eval(k.to_s)
	 		instance_variable_set(Sw3p::Frequency.new.send(k= "value")) unless v.nil?
	 		elsif  k == reporting
	 		v = eval(k.to_s)
	 		instance_variable_set(Sw3p::Reporting.new.send(k= "value")) unless v.nil?
	 		elsif k == comments	
	 		v = eval(k.to_s)
	 		instance_variable_set(Sw3p::Comments.new.send(k= "value")) unless v.nil?
	 		end 
	 	end
	 	@@all << self
	 end 
end 

