class Sw3p::Task < ActiveRecord::Base
	has_many :workorders
	has_many :comments, 	:through => :workorders
	has_many :sites, 		:through => :workorders
	has_many :clients, 		:through => :workorders
	has_many :freqency,     :through => :workorders
end 