class LocationsController < ApplicationController
  
  def index
    @locations = Location.all
    json_response(@locations)
  end

  private
    def json_response(object, status = :ok)
      render json: object, status: status
    end
  end

end