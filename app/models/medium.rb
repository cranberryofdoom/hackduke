class Medium < ActiveRecord::Base

	# relations
	belongs_to :semester

	#validations
	validates :title, presence: true
	validates :media_type, presence: true
end
