class Fall2014::WinnersController < ApplicationController
	layout 'fall2014'

	def index
		@winners = Winner.all
		@main_winners = Winner.where(:prize_type => "Main Prize")
		@sponsor_winners = Winner.where(:prize_type => "Sponsor Prize")
	end
end
