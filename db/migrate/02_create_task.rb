class Create CreateTasks < ActiveRecord::Migration[5.0]
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
#Primary keys - By default, Active Record will use an 
#integer column named id as the table's primary key. 
#When using Active Record Migrations to create your 
#tables, this column will be automatically created