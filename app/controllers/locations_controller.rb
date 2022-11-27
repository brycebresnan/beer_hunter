class LocationsController < ApplicationController
  
  def index
    name = params[:location_name]
    @locations = Location.search(name)
    json_response(@locations)
  end

  def show
    @location = Location.find(params[:id])
    json_response(@location)
  end

  def create
    @location = Location.create!(location_params)
    json_response(@location, :created)
  end

  def update
    @location = Location.find(params[:id])
    if @location.update!(location_params)
      render status: 200, json: {
        message: "Location updated successfully."
      }
    end
  end

  def destroy
    @location = Location.find(params[:id])
    if @location.destroy!
      render status: 200, json: {
        message: "Location deleted succesffully."
      }
    end
  end

  private
  def location_params
    params.permit(:location_name, :address ,:zip, :category)
  end

end