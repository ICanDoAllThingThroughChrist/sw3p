class Sw3p::Comment < ActiveRecord::Base
	has_many :workorders
	has_many :clients, 		:through => :workorders
	has_many :tasks, 		:through => :workorders
	has_many :sites, 		:through => :workorders
	has_many :frequencys,	:through => :workorders
end 