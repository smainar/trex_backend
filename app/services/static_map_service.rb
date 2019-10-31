class StaticMapService

  # def initialize(user)
  #   @user = user
  # end

  def conn
    conn = Faraday.new(url: 'https://maps.googleapis.com/maps/api/staticmap') do |faraday|
      faraday.params["key"] = ENV["GOOGLE_KEY"]
      faraday.params["markers"] = "color:blue%7Clabel:L%7C62.107733,-145.541936"
      faraday.params["size"] = "400x400"
      faraday.adapter Faraday.default_adapter
    end
  end

  def get_map
    response = conn.get
  end
end
