class Spring2014::PrizesController < ApplicationController
  def index
    @prizes = Prize.all
  end
end
