class CreateOrganizersSemesters < ActiveRecord::Migration
  def change
    create_table :organizers_semesters do |t|
    	t.belongs_to :organizer
    	t.belongs_to :semester
    end
    add_index :organizers_semesters, :organizer_id
    add_index :organizers_semesters, :semester_id
  end
end
