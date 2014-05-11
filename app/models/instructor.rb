class Instructor < ActiveRecord::Base

	# relations
	has_and_belongs_to_many :courses

	#validations
	validates :name, presence: true
	validates :image_url, presence: true
end
