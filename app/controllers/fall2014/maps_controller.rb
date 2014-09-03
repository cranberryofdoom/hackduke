class Fall2014::MapsController < ApplicationController
  layout 'fall2014'
  
  def index
    @maps = Map.all
  end
end
