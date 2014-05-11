class Prize < ActiveRecord::Base

	# concerns
	include Matchable
	include Markdownable

	# relations
	has_and_belongs_to_many :partners
	belongs_to :semester
	belongs_to :sponsor

	#validations
	validates :title, presence: true
	validates :markdown_content, presence: true
end
