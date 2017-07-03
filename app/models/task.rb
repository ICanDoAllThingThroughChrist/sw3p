class Sw3p::Tracking < ActiveRecord::Base
	belongs_to :task
	belongs_to :site
	belongs_to :frequency
	belongs_to :comment
end 