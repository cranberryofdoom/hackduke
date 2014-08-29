class Spring2014::MapsController < ApplicationController
  def index
    @maps = Map.all
  end
end
