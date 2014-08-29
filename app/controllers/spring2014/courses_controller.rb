class Spring2014::CoursesController < ApplicationController
  def index
    @courses = Course.all
  end
end
