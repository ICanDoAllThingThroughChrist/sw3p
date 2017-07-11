require_relative '../lib/workorders.rb'
class CreateWorkOrdersTable < ActiveRecord::Migration[5.0]
	def up
	end 

	def down
	end 

	def change
	 create_table :workorders do |t|
	 	t.primary_key  	:id
	 	t.string		:task
	 	t.string		:site
	 	t.string		:frequency
	 	t.string		:client
	 	t.string		:comments
	 	t.references	:task
	 	t.references	:site
	 	t.references	:frequency
	 	t.references	:client
	 	t.references	:comment
		t.timestamps
	 end
	end 
end 

#https://github.com/matthuhiggins/foreigner/blob/master/README.md
