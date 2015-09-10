class Fall2015::WinnersController < ApplicationController
	layout 'fall2015'

	def index
		@winners = Winner.all
		@main_winners = Winner.where(:prize_type => "Main Prize")
		@sponsor_winners = Winner.where(:prize_type => "Sponsor Prize")
	end
end
