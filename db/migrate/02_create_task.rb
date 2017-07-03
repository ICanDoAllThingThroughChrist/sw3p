class Create CreateTasks < ActiveRecord::Migration
	def up
	end 

	def down
	end 

	def change
	 create_table :tasks do |t|
	 	t.string :task
	 end  
	end 
end 