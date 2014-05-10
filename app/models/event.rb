class Event < ActiveRecord::Base

	# relations
	belongs_to :semester

	#validations
	validates :name, presence: true
end