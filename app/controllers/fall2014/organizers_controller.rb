class Spring2014::OrganizersController < ApplicationController
	layout 'spring2014'
	
	def index
		@organizers = Organizer.all
	end
end