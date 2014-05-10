class OrganizersController < ApplicationController
	def index
		@organizers = Organizer.all
	end
end