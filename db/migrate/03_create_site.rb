class Create CreateSites < ActiveRecord::Migration[5.0]
	def up
	end 

	def down
	end 

	def change
	 create_table :sites do |t|
	 	t.string :site
	 end  
	end 
end 