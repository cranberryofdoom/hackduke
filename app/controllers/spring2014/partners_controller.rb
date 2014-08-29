class Spring2014::PartnersController < ApplicationController
  layout 'spring2014'

  def index
    @partners = Partner.all
  end
end
