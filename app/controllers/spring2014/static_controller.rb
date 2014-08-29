class Spring2014::StaticController < ApplicationController
	layout 'spring2014'

	def index
		render 'home'
	end

	def gist
		render 'gist'
	end
end
