class AddSponsorToEvents < ActiveRecord::Migration
  def change
  	add_column :events, :sponsor_id, :integer
  	add_index :events, :sponsor_id
  end
end
