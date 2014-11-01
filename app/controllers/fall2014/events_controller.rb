class Fall2014::EventsController < ApplicationController
  layout 'fall2014'

  def index
  end

  def tech_talks
    @events = Event.joins(:semester).where(semesters: {season: "Fall", year: Date.new(2014)})
  end
end
