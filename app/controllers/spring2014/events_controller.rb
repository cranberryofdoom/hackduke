class Spring2014::EventsController < ApplicationController
  def brainstorm
    @events = Event.all
  end

  def tech_talks
    @events = Event.all
  end
end
