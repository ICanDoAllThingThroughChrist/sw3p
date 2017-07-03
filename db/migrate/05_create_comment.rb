class Create CreateComments < ActiveRecord::Migration
	def up
	end 

	def down
	end 

	def change
	 create_table :comments do |t|
	 	t.string :comment
	 end  
	end 
end 