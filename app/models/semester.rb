class Semester < ActiveRecord::Base
	
	# relations
	has_and_belongs_to_many :sponsors
	has_and_belongs_to_many :mentors
	has_and_belongs_to_many :partners
	has_and_belongs_to_many :organizers
	has_and_belongs_to_many :faqs
	has_many :prizes
	has_many :courses
	has_many :maps
	has_many :events

	# validations
	validates :season, presence: true
	validates :year, presence: true

	#methods
	def to_s
		"#{season} #{year.year}"
	end
end