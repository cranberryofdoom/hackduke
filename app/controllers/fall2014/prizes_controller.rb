class Fall2014::PrizesController < ApplicationController
  layout 'fall2014'
  
  def index
    @prizes = Prize.joins(:semester).where(semesters: {season: "Fall", year: Date.new(2014)})
  end
end
