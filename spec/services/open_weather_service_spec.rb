require 'rails_helper'

RSpec.describe OpenWeatherService, type: :service do
  describe 'get#index' do
    let(:service) { OpenWeatherService.new('dummy_api_key') }

    before do
      stub_request(:get, 'https://api.openweathermap.org/data/2.5/weather')
        .with(query: { q: 'Monterrey', appid: 'dummy_api_key', units: 'metric' })
        .to_return(status: 200, body: '{"name": "Monterrey", "weather": [{"main": "Clear"}]}')
    end

    it 'returns weather data for a city' do
      response = service.get_weather('Monterrey')
      expect(response).to be_a(HTTParty::Response)
      expect(response.parsed_response).not_to be_nil
      parsed_response = JSON.parse(response.parsed_response)
      expect(parsed_response).to be_a(Hash)
      expect(parsed_response['name']).to eq('Monterrey')
    end
  end
end
