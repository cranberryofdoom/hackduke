class Fall2015::PartnersController < ApplicationController
  layout 'fall2015'

  def index
    @partners = Partner.joins(:semesters).where({season: "Fall", year: Date.new(2015)})
  end
end
