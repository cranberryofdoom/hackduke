class Spring2014::WidgetsController < ApplicationController
	layout 'spring2014'
	
	def apply_team
		render 'apply_team'
	end

	def mentor_info
		render 'mentor_info'
	end
end