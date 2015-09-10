class Fall2015::StaticController < ApplicationController
	layout 'fall2015'

	def index
		@faqs = Faq.joins(:semesters).where(semesters: {season: "Fall", year: Date.new(2015)})
		@large_sponsors = Sponsor.joins(:semesters).where(semesters: {season: "Fall", year: Date.new(2015)}, tier: "large")
		@medium_sponsors = Sponsor.joins(:semesters).where(semesters: {season: "Fall", year: Date.new(2015)}, tier: "medium")
		@small_sponsors = Sponsor.joins(:semesters).where(semesters: {season: "Fall", year: Date.new(2015)}, tier: "small")
		@mentors = Mentor.joins(:semesters).where(semesters: {season: "Fall", year: Date.new(2015)}).order(:sponsor_id).order(:partner_id)
		render 'home'
	end

	def gist
		render 'gist'
	end

	def fun
		render 'fun'
	end

	def speakers
		render 'speakers'
	end
end
