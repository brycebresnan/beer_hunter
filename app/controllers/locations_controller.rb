class LocationsController < ApplicationController
  
  def index
    @locations = Location.all
    json_response(@locations)
  end


end