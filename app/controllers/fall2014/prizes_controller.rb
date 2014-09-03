class Fall2014::PrizesController < ApplicationController
  layout 'fall2014'
  
  def index
    @prizes = Prize.all
  end
end
