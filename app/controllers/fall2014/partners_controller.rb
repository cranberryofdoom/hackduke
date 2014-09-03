class Fall2014::PartnersController < ApplicationController
  layout 'fall2014'

  def index
    @partners = Partner.all
  end
end
