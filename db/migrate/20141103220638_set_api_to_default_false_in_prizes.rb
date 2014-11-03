class SetApiToDefaultFalseInPrizes < ActiveRecord::Migration
  def change
  	change_column :prizes, :api, :boolean, :default => false
  end
end
