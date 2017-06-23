class Api::V1::WeathersController < Api::V1::BaseController
  before_action :set_city, only: [:show]
  
  def show
    if @city
      render json: { weather: @city.weather }, status: 200
    else
      render json: { message: "Invalid City" }, status: 400
    end
  end

  private
  def set_city
    @city = City.by_name(params[:name]).first
  end
end