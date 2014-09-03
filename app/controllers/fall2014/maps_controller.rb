class Spring2014::MapsController < ApplicationController
  layout 'spring2014'
  
  def index
    @maps = Map.all
  end
end
