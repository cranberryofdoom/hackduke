class AddPartnersToEvents < ActiveRecord::Migration
  def change
  	add_column :events, :partner_id, :integer
  	add_index :events, :partner_id
  end
end
