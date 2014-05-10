class CreateFaqsSemesters < ActiveRecord::Migration
  def change
    create_table :faqs_semesters do |t|
    	t.belongs_to :semester
    	t.belongs_to :faq
    end
    add_index :faqs_semesters, :semester_id
    add_index :faqs_semesters, :faq_id
  end
end