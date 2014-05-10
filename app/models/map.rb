class Map < ActiveRecord::Base

	# relations
	belongs_to :semester

	#validations
	validates :name, presence: true
	validates :image_url, presence: true
end
