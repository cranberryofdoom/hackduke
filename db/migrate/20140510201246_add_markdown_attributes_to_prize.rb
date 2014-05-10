class AddMarkdownAttributesToPrize < ActiveRecord::Migration
	def change
		add_column :prizes, :html_content, :text
		rename_column :prizes, :description, :markdown_content
		Prize.all.each do |p|
			p.compile_content!
		end
	end
end
