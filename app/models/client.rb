class Sw3p::Client < ActiveRecord::Base
	has_many :workorders
	has_many :comments,  	:through => :workorders
	has_many :tasks,  		:through => :workorders
	has_many :sites,  		:through => :workorders
	has_many :freqency,     :through => :workorders
end