class Api::V1::SightingsController < ApplicationController

  def index
    @sightings = Sighting.all
    render json: @sightings, :include => :comments
  end

  def create
    # byebug
    @sighting = Sighting.create(sighting_params)
    render json: @sighting, :include => :comments
  end

  def update
    @sighting = Sighting.find(params[:id])
    @sighting.update(sighting_params)
    render json: @sighting, :include => :comments
  end

  def destroy
    @sighting = Sighting.find(params[:id])
    @sighting.delete
    render json: {message: "Successfully deleted"}
  end

  private

  def sighting_params
    params.require(:sighting).permit(:location, :description, :photo, :lat, :lng, :user_id)
  end

end
