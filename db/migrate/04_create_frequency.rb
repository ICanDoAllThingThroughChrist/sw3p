class Create CreateFrequencys < ActiveRecord::Migration[5.0]
	def up
	end 

	def down
	end 

	def change
	 create_table :frequencys do |t|
	 	t.string :frequency
	 end  
	end 
end 