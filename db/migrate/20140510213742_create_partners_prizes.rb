class CreatePartnersPrizes < ActiveRecord::Migration
  def change
    create_table :partners_prizes do |t|
    	t.belongs_to :partner
    	t.belongs_to :prize
    end
    add_index :partners_prizes, :partner_id
    add_index :partners_prizes, :prize_id
  end
end