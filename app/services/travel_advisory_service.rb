class TravelAdvisoryService

  def conn
    conn = Faraday.new(url: 'https://www.travel-advisory.info/api') do |faraday|
    faraday.adapter Faraday.default_adapter
    end
  end

  def get_json
    response = conn.get
    parsed  = JSON.parse(response.body, symbolize_names: true)
    find_values = parsed[:data].values
    iterate = find_values.map do |p|
    TravelAdvisory.create(name: p[:name], score: p[:advisory][:score], message: p[:advisory][:message])
    end
  end
end
