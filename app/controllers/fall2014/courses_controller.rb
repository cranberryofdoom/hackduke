class Fall2014::CoursesController < ApplicationController
  layout 'fall2014'
  
  def index
    @courses = Course.joins(:semester).where(semesters: {season: "Fall", year: Date.new(2014)})
  end
end
