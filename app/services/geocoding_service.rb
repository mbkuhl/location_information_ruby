class GeocodingService
  def self.conn
    Faraday.new(url: "https://geocode.maps.co/")
  end

  def self.get_details(lat, lon)
    response = conn.get("reverse?lat=#{lat}&lon=#{lon}&api_key=#{Rails.application.credentials.geocoding_api[:key]}")
    hash = JSON.parse(response.body, symbolize_names: true)
    {
      city: hash[:address][:city],
      county: hash[:address][:county],
      state: hash[:address][:state],
      country: hash[:address][:country]
    }
    end

end