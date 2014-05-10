class CreatePartnersSemesters < ActiveRecord::Migration
  def change
    create_table :partners_semesters do |t|
    	t.belongs_to :semester
    	t.belongs_to :partner
    end
    add_index :partners_semesters, :semester_id
    add_index :partners_semesters, :partner_id
  end
end
