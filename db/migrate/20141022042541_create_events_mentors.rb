class CreateEventsMentors < ActiveRecord::Migration
	def change
		create_table :events_mentors do |t|
			t.belongs_to :event
			t.belongs_to :mentor
		end
		add_index :events_mentors, :event_id
		add_index :events_mentors, :mentor_id
	end
end
