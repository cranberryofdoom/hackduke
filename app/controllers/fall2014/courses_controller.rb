class Fall2014::CoursesController < ApplicationController
  layout 'fall2014'
  
  def index
    @courses = Course.all
  end
end
