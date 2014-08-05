class StaticController < ApplicationController
	def index
		render 'home'
	end

	def team_apply
		render 'team_apply'
	end
end
