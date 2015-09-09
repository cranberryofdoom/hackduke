class Fall2015::PrizesController < ApplicationController
  layout 'fall2015'
  
  def index
    @prizes = Prize.joins(:semester).where(semesters: {season: "Fall", year: Date.new(2014)})
  end
end
