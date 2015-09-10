class Fall2015::MapsController < ApplicationController
  layout 'fall2015'
  
  def index
    @maps = Map.all
  end
end
