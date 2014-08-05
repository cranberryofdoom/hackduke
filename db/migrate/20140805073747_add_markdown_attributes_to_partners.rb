class AddMarkdownAttributesToPartners < ActiveRecord::Migration
	def change
		add_column :partners, :html_content, :text
		add_column :partners, :markdown_content, :text
		Partner.all.each do |p|
			p.compile_content!
		end
	end
end
