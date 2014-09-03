class Fall2014::OrganizersController < ApplicationController
	layout 'fall2014'
	
	def index
		@organizers = Organizer.all
	end
end