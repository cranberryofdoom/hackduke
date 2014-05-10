class CreateSemestersSponsors < ActiveRecord::Migration
  def change
    create_table :semesters_sponsors do |t|
    	t.belongs_to :semester
    	t.belongs_to :sponsor
    end
    add_index :semesters_sponsors, :semester_id
    add_index :semesters_sponsors, :sponsor_id
  end
end
