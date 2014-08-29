class AddPrizeTypeAndPrizeDescriptionToWinners < ActiveRecord::Migration
  def change
  	add_column :winners, :prize_type, :string
  	add_column :winners, :prize_description, :string
  end
end
