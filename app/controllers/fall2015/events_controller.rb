class Fall2015::EventsController < ApplicationController
  layout 'fall2015'

  def index
  end

  def tech_talks
    @events = Event.joins(:semester).where(semesters: {season: "Fall", year: Date.new(2015)}).order(:date).order(:start_time)
  end
end
