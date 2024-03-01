# app/services/reservamos_service.rb

class ReservamosService
  include HTTParty
  base_uri 'https://search.reservamos.mx/api/v2'

  def self.search_city(city_name)
    response = get("/places", query: { q: city_name })
    if response.success?
      # Parse the JSON response and extract city data
      cities_data = response.parsed_response
      cities = cities_data.map do |city|
        {
          name: city['city_name'],
          lat: city['lat'],
          lon: city['long']
        } if city['country'] == 'México' && city['result_type'] == 'city'
      end.compact
      cities.first(7)
    else
      [] # Return an empty array in case of failure
    end
  end
end
