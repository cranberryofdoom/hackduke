class Course < ActiveRecord::Base

	# relations
	belongs_to :semester

	#validations
	validates :title, presence: true
	validates :description, presence: true
end
