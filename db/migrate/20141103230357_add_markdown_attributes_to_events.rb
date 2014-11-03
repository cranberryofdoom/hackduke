class AddMarkdownAttributesToEvents < ActiveRecord::Migration
	def change
		add_column :events, :html_content, :text
		add_column :events, :markdown_content, :text
		Event.all.each do |e|
			e.compile_content!
		end
	end
end
