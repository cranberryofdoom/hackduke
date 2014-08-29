class Spring2014::MentorsController < InheritedResources::Base
	def our_mentors
		@mentors = Mentor.all
	end
	def our_experts
		@experts = Mentor.all
	end
end
