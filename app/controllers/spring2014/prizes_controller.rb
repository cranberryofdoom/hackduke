class Spring2014::PrizesController < ApplicationController
  layout 'spring2014'
  
  def index
    @prizes = Prize.all
  end
end
