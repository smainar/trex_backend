class DarkSky

  def initialize(coords)
    @lat = coords[:lat]
    @long = coords[:lng]
    @key = ENV["DARKSKY_KEY"]
  end

  def conn
    conn = Faraday.new(url: "https://api.darksky.net/forecast/#{@key}/#{@lat},#{@long}") do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end

  def get_json
    response = conn.get
    JSON.parse(response.body, symbolize_names: true)
  end


  def current_weather
    get_json[:currently]
  end

end
