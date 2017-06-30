require 'pry'
require 'pry-rescue'
require 'pry-stack_explorer'
require 'pry-doc'
require_relative 'sw3p'
require_relative 'cli'
require_relative 'task'
require_relative 'site'
require_relative 'frequency'
require_relative 'reporting'
require_relative 'comments'

class Sw3p::Tracking 
	 attr_accessor :task, :site, :frequency, :reporting, :comments
	 @@all = []

	 def initialize(hash) 
			hash.each do |key, value|
        	self.send("#{key}=", value)
	 		end 
	 	@@all << self
	 	binding.pry
	 end 
end

