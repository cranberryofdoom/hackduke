class Faq < ActiveRecord::Base

	# concerns
	include Matchable
	include Markdownable

	# relations
	has_and_belongs_to_many :semesters

	# validations
	validates :question, presence: true
	validates :markdown_content, presence: true
end
