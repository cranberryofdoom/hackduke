class Fall2014::EventsController < ApplicationController
  layout 'fall2014'

  def index
  end

  def tech_talks
    @events = match_one_semester(Event.all, "Fall", 2014)
  end
end
