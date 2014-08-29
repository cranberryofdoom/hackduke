class Spring2014::StaticController < ApplicationController
	def index
		render 'home'
	end

	def team_apply
		render 'team_apply'
	end

	def gist
		render 'gist'
	end
end
