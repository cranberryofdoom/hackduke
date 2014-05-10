class Prize < ActiveRecord::Base

	# relations
	belongs_to :semester
	belongs_to :sponsor

	#validations
	validates :title, presence: true
	validates :description, presence: true
end
