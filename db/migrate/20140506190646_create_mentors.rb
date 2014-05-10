class CreateMentors < ActiveRecord::Migration
	def change
		create_table :mentors do |t|
			t.string :name
			t.string :image_url
			t.string :bio
			t.integer :partner_id
			t.integer :sponsor_id
			t.timestamps
		end
		add_index :mentors, :sponsor_id
		add_index :mentors, :partner_id
	end
end
