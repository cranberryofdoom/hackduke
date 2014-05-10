class CreateEvents < ActiveRecord::Migration
	def change
		create_table :events do |t|
			t.string :name
			t.string :location
			t.date :date
			t.time :start_time
			t.time :end_time
			t.integer :semester_id
			t.timestamps
		end
		add_index :events, :semester_id
	end
end
