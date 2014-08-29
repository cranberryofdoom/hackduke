class Spring2014::OrganizersController < ApplicationController
	def index
		@organizers = Organizer.all
	end
end