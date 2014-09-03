class Fall2014::MentorsController < ApplicationController
	layout 'fall2014'

	def our_mentors
		@mentors = Mentor.all
	end
	
	def our_experts
		@experts = Mentor.all
	end

	def guidelines
	end
end
