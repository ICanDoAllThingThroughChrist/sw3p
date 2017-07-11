class Sw3p::Site < ActiveRecord::Base
	has_many :workorders
	has_many :comments,  	:through => :workorders
	has_many :tasks,  		:through => :workorders
	has_many :clients,  	:through => :workorders
	has_many :freqency,     :through => :workorders
end 