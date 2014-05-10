class OrganizersController < ApplicationController
	def index
		@organizer = Organizers.all
	end
end