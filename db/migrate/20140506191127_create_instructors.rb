class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
    	t.string :name
    	t.string :image_url
    	t.integer :course_id
      t.timestamps
    end
    add_index :instructors, :course_id
  end
end
