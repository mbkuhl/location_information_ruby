class ImageService
  
  def self.conn
    Faraday.new(url: "https://api.unsplash.com/")
  end

  def self.get_details(location)
    response = conn.get("search/photos/?client_id=#{Rails.application.credentials.image_api[:key]}&query=#{location}")
    hash = JSON.parse(response.body, symbolize_names: true)
    hash[:results].map {|image| image[:urls][:raw] }
  end 
end