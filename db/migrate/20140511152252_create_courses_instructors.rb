class CreateCoursesInstructors < ActiveRecord::Migration
  def change
    create_table :courses_instructors do |t|
    	t.belongs_to :course
    	t.belongs_to :instructor
    end
    add_index :courses_instructors, :course_id
    add_index :courses_instructors, :instructor_id
  end
end
