class LocationInformationFacade

  def self.get_info(lat, lon)
    location = GeocodingService.get_details(lat, lon)
    {
      location: location,
      images: ImageService.get_details(location[:state]),
      wiki: WikiService.get_details(location[:state])
    }
  end
end