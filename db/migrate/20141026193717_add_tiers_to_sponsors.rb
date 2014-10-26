class AddTiersToSponsors < ActiveRecord::Migration
  def change
  	add_column :sponsors, :tier, :string
  end
end
