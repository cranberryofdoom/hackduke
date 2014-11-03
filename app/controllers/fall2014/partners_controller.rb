class Fall2014::PartnersController < ApplicationController
  layout 'fall2014'

  def index
    @partners = Partner.joins(:semesters).where({season: "Fall", year: Date.new(2014)})
  end
end
