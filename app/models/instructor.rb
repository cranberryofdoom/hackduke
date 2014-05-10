class Instructor < ActiveRecord::Base

	# relations
	belongs_to :course

	#validations
	validates :name, presence: true
	validates :image_url, presence: true
end
