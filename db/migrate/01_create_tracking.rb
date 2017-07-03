class Create CreateTrackings < ActiveRecord::Migration
	def up
	end 

	def down
	end 

	def change
	 create_table :trackings do |t|
	 	t.string :task_id
	 	t.string :site_id
	 	t.string :frequency_id	
	 	t.string :reporting_id
	 	t.string :comments_id
	 end  
	end 
end 