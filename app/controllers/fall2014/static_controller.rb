class Fall2014::StaticController < ApplicationController
	layout 'fall2014'

	def index
		@faqs = match_semester(Faq.all, "Fall", 2014)
		@large_sponsors = Sponsor.where(tier: "large")
		@medium_sponsors = Sponsor.where(tier: "medium")
		@small_sponsors = Sponsor.where(tier: "small")
		render 'home'
	end

	def gist
		render 'gist'
	end

	def fun
		render 'fun'
	end
end
