require 'rails_helper'

RSpec.describe WeatherController, type: :controller do
  describe 'GET index' do
    before do
      stub_request(:get, 'https://api.openweathermap.org/data/2.5/weather')
        .with(
          query: {
            'appid' => ENV['OPEN_WEATHER_API_KEY'],
            'q' => 'Monterrey',
            'units' => 'metric'
          }
        ).to_return(status: 200, body: '{"name": "Monterrey", "weather": [{"main": "Clear"}]}', headers: {})
    end

    it 'returns weather data for a city' do
      get :index, params: { city_name: 'Monterrey' }
      expect(response).to have_http_status(:success)
      json_response = JSON.parse(response.body)
      expect(json_response).to be_a(Hash)
      expect(json_response['name'] == 'Monterrey')
    end
  end
end
