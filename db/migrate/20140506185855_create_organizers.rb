class CreateOrganizers < ActiveRecord::Migration
	def change
		create_table :organizers do |t|
			t.string :name
			t.string :image_url
			t.boolean :admin
			t.timestamps
		end
	end
end
