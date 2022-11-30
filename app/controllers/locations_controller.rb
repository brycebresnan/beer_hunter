class LocationsController < ApplicationController
  include ApiKeyAuthenticatable 
  # prepend_before_action :authenticate_with_api_key!
  
  def index
    # if params == nil
      @locations = Location.all 
      json_response(@locations)
    # elsif params[:location_name].present?
    #   name = params[:location_name]
    #   @locations = Location.search(name)
    #   json_response(@locations)
    # end
  end


  def barcrawl
    @bars = Location.barcrawl(params[:zip].to_i)
    json_response(@bars)
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