class Fall2014::StaticController < ApplicationController
	layout 'fall2014'

	def index
		render 'home'
	end

	def gist
		render 'gist'
	end
end
