class CreatePartners < ActiveRecord::Migration
	def change
		create_table :partners do |t|
			t.string :name
			t.string :image_url
			t.string :link_url
			t.string :partnership_type
			t.timestamps
		end
	end
end
