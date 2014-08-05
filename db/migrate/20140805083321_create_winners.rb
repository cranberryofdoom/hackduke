class CreateWinners < ActiveRecord::Migration
  def change
    create_table :winners do |t|
    	t.string :team_members
    	t.string :project
    	t.string :link_url
    	t.integer :semester_id
    end
    add_index :winners, :semester_id
  end
end
