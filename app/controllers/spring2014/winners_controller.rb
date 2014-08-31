class Spring2014::WinnersController < ApplicationController
	layout 'spring2014'

	def index
		@winners = Winner.all
	end
end
