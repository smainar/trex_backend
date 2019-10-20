class GoogleGeocoding

  def initialize(current_location)
    @current_location = current_location
  end

  def conn
    conn = Faraday.new(url: 'https://maps.googleapis.com/maps/api/geocode/json?') do |faraday|
      faraday.params["key"] = ENV["GOOGLE_KEY"]
      faraday.params["address"] = "#{@current_location}"
    faraday.adapter Faraday.default_adapter
    end
  end

  def get_json
    response = conn.get
    JSON.parse(response.body, symbolize_names: true)
  end

  def lat_and_long
    get_json[:results].first[:geometry][:location]
  end
end
