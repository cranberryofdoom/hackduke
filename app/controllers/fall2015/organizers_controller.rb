class Fall2015::OrganizersController < ApplicationController
	layout 'fall2015'
	
	def index
		@organizers = Organizer.all
	end
end