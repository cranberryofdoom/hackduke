require "bluecloth"

class Faq < ActiveRecord::Base

	# concerns
	include Matchable

	# relations
	has_and_belongs_to_many :semesters

	# validations
	validates :question, presence: true
	validates :markdown_content, presence: true

	# callbacks
	before_save :compile_content

	# methods
	def compile_content
		self.html_content = BlueCloth.new(self.markdown_content).to_html
	end

	def compile_content!
		self.html_content = BlueCloth.new(self.markdown_content).to_html
		self.save
	end
end
