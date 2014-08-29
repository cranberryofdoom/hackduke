class Spring2014::CoursesController < ApplicationController
  layout 'spring2014'
  
  def index
    @courses = Course.all
  end
end
