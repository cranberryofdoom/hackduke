class Prize < ActiveRecord::Base

	# concerns
	include Matchable
	include Markdownable

	# relations
	belongs_to :semester
	belongs_to :sponsor

	#validations
	validates :title, presence: true
	validates :markdown_content, presence: true
end
