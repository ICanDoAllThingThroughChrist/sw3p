require 'pry'
require 'pry-rescue'
require 'pry-stack_explorer'
require 'pry-doc'
require 'sqlite3'
require_relative 'sw3p'
require_relative 'cli'
require_relative 'task'
require_relative 'site'
require_relative 'frequency'
require_relative 'reporting'
require_relative 'comments'
require_relative 'Interactive'
class Sw3p::Tracking < InteractiveRecord
	   self.column_names.each do |col_name|
       attr_accessor col_name.to_sym
     end

end 


