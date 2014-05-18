class Mentor < ActiveRecord::Base

	# concerns
	include Matchable
	include Markdownable

	# relations
	has_and_belongs_to_many :semesters
	belongs_to :partner
	belongs_to :sponsor

	#validations
	validates :name, presence: true
	validates :image_url, presence: true
end
