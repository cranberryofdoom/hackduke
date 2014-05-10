class Sponsor < ActiveRecord::Base
	
	# concerns
	include Matchable

	# relations
	has_and_belongs_to_many :semesters
	has_many :prizes
	has_many :mentors

	# validations
	validates :name, presence: true
	validates :image_url, presence: true
	validates :link_url, presence: true
end