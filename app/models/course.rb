class Course < ActiveRecord::Base

	# relations
	belongs_to :semester
	has_and_belongs_to_many :instructors

	#validations
	validates :title, presence: true
end
