class AddTracksToMentors < ActiveRecord::Migration
  def change
  	add_column :mentors, :education, :boolean
  	add_column :mentors, :poverty, :boolean
  	add_column :mentors, :health, :boolean
  	add_column :mentors, :energy, :boolean
  end
end
