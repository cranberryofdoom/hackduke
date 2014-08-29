class Fall2013::StaticController < ApplicationController
	layout 'fall2013'

	def index
		@winners = Winner.all
		@sponsors = Sponsor.all
		@media = Medium.all
		@partners = Partner.all
		render 'home'
	end
end
