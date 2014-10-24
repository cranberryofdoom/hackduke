class Course < ActiveRecord::Base
	# concerns
	include Matchable

	# relations
	belongs_to :semester
	has_and_belongs_to_many :instructors

	#validations
	validates :title, presence: true
end
