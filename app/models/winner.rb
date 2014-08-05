class Winner < ActiveRecord::Base

	# relations
	belongs_to :semester

	#validations
	validates :team_members, presence: true
	validates :project, presence: true
	validates :prize_type, presence: true
end
