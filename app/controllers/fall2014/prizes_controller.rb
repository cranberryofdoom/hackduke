class Fall2014::PrizesController < ApplicationController
  layout 'fall2014'
  
  def index
    @prizes = match_semester(Prizes.all, "Fall", 2014)
  end
end
