class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def match_semester(matchable_array, season, year)
  	matched_model = Array.new
  	matchable_array.each do |model|
  		if model.match?(season, year)
  			matched_model << model
  		end
  	end
  	return matched_model
  end
end
