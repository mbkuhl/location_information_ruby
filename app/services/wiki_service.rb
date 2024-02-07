class WikiService
  
  def self.conn
    Faraday.new(url: "https://en.wikipedia.org/w/")
  end

  def self.get_details(location)
    response = conn.get("api.php?action=query&format=json&prop=info&inprop=url&titles=#{location}")
    hash = JSON.parse(response.body, symbolize_names: true)
    hash[:query][:pages].first[1][:fullurl]
  end
end