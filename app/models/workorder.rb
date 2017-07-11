class Sw3p::WorkOrder < ActiveRecord::Base
	belongs_to :client
	belongs_to :task
	belongs_to :comment
	belongs_to :site
	belongs_to :frequency
end 