class Fall2014::StaticController < ApplicationController
	layout 'fall2014'

	def index
		@Faq = match_semester(Faq.all, "Fall", 2014)
		render 'home'
	end

	def gist
		render 'gist'
	end
end
