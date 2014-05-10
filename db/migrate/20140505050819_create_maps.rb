class CreateMaps < ActiveRecord::Migration
	def change
		create_table :maps do |t|
			t.string :name
			t.string :image_url
			t.integer :semester_id
			t.timestamps
		end
		add_index :maps, :semester_id
	end
end
