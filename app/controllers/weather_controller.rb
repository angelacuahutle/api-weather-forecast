class WeatherController < ApplicationController
  def index
    weather_service = OpenWeatherService.new(ENV['OPEN_WEATHER_API_KEY'])
    @weather_data = weather_service.get_weather(params[:city_name])
    render json: @weather_data
  end
end
