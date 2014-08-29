class Spring2014::EventsController < ApplicationController
  layout 'spring2014'
  
  def brainstorm
    @events = Event.all
  end

  def tech_talks
    @events = Event.all
  end
end
