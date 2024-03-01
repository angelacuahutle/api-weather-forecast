class WeatherController < ApplicationController
  def index
    city_name = params[:city_name]
    if city_name.present?
      weather_service = OpenWeatherService.new(ENV['OPEN_WEATHER_API_KEY'])
      @weather_data = weather_service.get_weather(city_name)
      render json: @weather_data
    else
      render json: { error: 'City name is required' }, status: :bad_request
    end
  end
end
