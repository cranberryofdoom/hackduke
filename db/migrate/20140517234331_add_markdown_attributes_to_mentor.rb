class AddMarkdownAttributesToMentor < ActiveRecord::Migration
	def change
		add_column :mentors, :html_content, :text
		rename_column :mentors, :bio, :markdown_content
		Mentor.all.each do |m|
			m.compile_content!
		end
	end
end
