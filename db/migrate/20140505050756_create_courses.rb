class CreateCourses < ActiveRecord::Migration
	def change
		create_table :courses do |t|
			t.string :title
			t.string :location
			t.date :date
			t.time :start_time
			t.time :end_time
			t.integer :semester_id
			t.timestamps
		end
		add_index :courses, :semester_id
	end
end
