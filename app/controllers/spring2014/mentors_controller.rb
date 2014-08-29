class Spring2014::MentorsController < InheritedResources::Base
	layout 'spring2014'

	def our_mentors
		@mentors = Mentor.all
	end
	
	def our_experts
		@experts = Mentor.all
	end
end
