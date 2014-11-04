class Fall2014::StaticController < ApplicationController
	layout 'fall2014'

	def index
		@faqs = Faq.joins(:semesters).where(semesters: {season: "Fall", year: Date.new(2014)})
		@large_sponsors = Sponsor.joins(:semesters).where(semesters: {season: "Fall", year: Date.new(2014)}, tier: "large")
		@medium_sponsors = Sponsor.joins(:semesters).where(semesters: {season: "Fall", year: Date.new(2014)}, tier: "medium")
		@small_sponsors = Sponsor.joins(:semesters).where(semesters: {season: "Fall", year: Date.new(2014)}, tier: "small")
		@mentors = Mentor.joins(:semesters).where(semesters: {season: "Fall", year: Date.new(2014)}).order(:sponsor_id).order(:partner_id)
		render 'home'
	end

	def gist
		render 'gist'
	end

	def fun
		render 'fun'
	end
end
