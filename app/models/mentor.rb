class Mentor < ActiveRecord::Base

	# relations
	has_and_belongs_to_many :semester
	belongs_to :partner
	belongs_to :sponsor

	#validations
	validates :name, presence: true
	validates :image_url, presence: true
	validates :link_url, presence: true
end
