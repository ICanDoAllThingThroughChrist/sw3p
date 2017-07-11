require 'pry'
require 'pry-rescue'
require 'pry-stack_explorer'
require 'pry-doc'
require 'sqlite3'
require 'active_record'
require_relative 'sw3p'
require_relative 'cli'
require_relative 'task'
require_relative 'site'
require_relative 'frequency'
require_relative 'reporting'
require_relative 'comments'


class Sw3p::Tracking < ActiveRecord::Base
  attr_accessor :task, :site, :frequency, :reporting, :comments
   @@all = []

   def initialize(options={})
        options.each do |index, value|
          self.send("#{index}=", value)
     end
        @@all << self
        binding.pry
   end

end 


