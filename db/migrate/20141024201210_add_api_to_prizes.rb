class AddApiToPrizes < ActiveRecord::Migration
  def change
  	add_column :prizes, :api, :boolean
  end
end
