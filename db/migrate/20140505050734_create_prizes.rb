class CreatePrizes < ActiveRecord::Migration
	def change
		create_table :prizes do |t|
			t.string :title
			t.text :description
			t.integer :semester_id
			t.integer :sponsor_id
			t.timestamps
		end
		add_index :prizes, :semester_id	
		add_index :prizes, :sponsor_id	
	end
end
