class AddAboutToPartners < ActiveRecord::Migration
  def change
  	  	add_column :partners, :about, :text
  end
end
