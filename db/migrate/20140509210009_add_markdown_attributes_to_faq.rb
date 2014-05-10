class AddMarkdownAttributesToFaq < ActiveRecord::Migration
  def change
  	add_column :faqs, :html_content, :text
  	rename_column :faqs, :answer, :markdown_content
  	Faq.all.each do |f|
  		f.compile_content!
  	end
  end
end
