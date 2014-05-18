class CreateMentorsSemesters < ActiveRecord::Migration
  def change
    create_table :mentors_semesters do |t|
    	t.belongs_to :mentor
    	t.belongs_to :semester
    end
    add_index :mentors_semesters, :mentor_id
    add_index :mentors_semesters, :semester_id
  end
end
