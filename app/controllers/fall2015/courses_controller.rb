class Fall2015::CoursesController < ApplicationController
  layout 'fall2015'
  
  def index
    @courses = Course.joins(:semester).where(semesters: {season: "Fall", year: Date.new(2015)})
  end
end
