class AddTrackAndFocusToPartners < ActiveRecord::Migration
  def change
  	add_column :partners, :track, :string
  	add_column :partners, :focus, :string
  end
end
