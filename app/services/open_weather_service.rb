class OpenWeatherService
  include HTTParty
  base_uri 'https://api.openweathermap.org/data/2.5'

  def initialize(api_key)
    @api_key = api_key
  end

  def get_weather(city_name)
    options = { query: { q: city_name, appid: @api_key, units: 'metric' } }

    self.class.get('/weather', options)
  end
end
