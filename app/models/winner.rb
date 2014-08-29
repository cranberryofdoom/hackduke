class Winner < ActiveRecord::Base

	# relations
	belongs_to :semester

	#validations
	validates :project, presence: true
	validates :prize_type, presence: true
end
