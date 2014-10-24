class Fall2014::CoursesController < ApplicationController
  layout 'fall2014'
  
  def index
    @courses = match_one_semester(Course.all, "Fall", 2014)
  end
end
