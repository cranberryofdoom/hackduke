class Partner < ActiveRecord::Base

	# concerns
	include Matchable

	# relations
	has_and_belongs_to_many :semesters

	#validations
	validates :name, presence: true
	validates :image_url, presence: true
	validates :link_url, presence: true
	validates :partnership_type, presence: true
end
