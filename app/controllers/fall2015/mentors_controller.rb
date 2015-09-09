class Fall2015::MentorsController < ApplicationController
	layout 'fall2015'

	def our_mentors
		@mentors = Mentor.all
	end
	
	def our_experts
		@experts = Mentor.all
	end

	def guidelines
	end
end
