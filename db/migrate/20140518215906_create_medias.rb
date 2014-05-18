class CreateMedias < ActiveRecord::Migration
  def change
    create_table :medias do |t|
    	t.string :title
    	t.string :link_url
    	t.string :media_type
    	t.text :iframe_html
    	t.integer :semester_id
    end
    add_index :medias, :semester_id
  end
end