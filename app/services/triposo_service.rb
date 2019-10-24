class TriposoService


  def conn
    conn = Faraday.new(url: 'https://www.triposo.com/api/20190906/local_highlights.json?latitude=29.749907&longitude=-95.358421
') do |faraday|

    faraday.headers["X-Triposo-Account"] = ENV["X-Triposo-Account"]
    faraday.headers["X-Triposo-Token"] = ENV["X-Triposo-Token"]
    faraday.adapter Faraday.default_adapter
    end
  end

  def get_json
    response = conn.get
    parsed  = JSON.parse(response.body, symbolize_names: true)
    poi = parsed[:results].first[:pois]
    end


  def create_poi
    get_json.map do |poi_data|
     Poi.create(name: poi_data[:name], snippet: poi_data[:snippet], score: poi_data[:score])
    end
  end
end
