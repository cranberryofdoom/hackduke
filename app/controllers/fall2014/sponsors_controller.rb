class Fall2014::SponsorsController < ApplicationController
	layout 'fall2014'

	def index
		@large_sponsors = Sponsor.all.find_by(large: true)
	end
end
