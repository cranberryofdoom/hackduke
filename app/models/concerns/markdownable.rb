module Markdownable
	require "bluecloth"

	extend ActiveSupport::Concern

	# callbacks
	included do
		before_save :compile_content
	end

	# methods
	def compile_content
		self.html_content = BlueCloth.new(self.markdown_content).to_html
	end

	def compile_content!
		self.html_content = BlueCloth.new(self.markdown_content).to_html
		self.save
	end
end