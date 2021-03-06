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
  end

  def create_advisories
    get_json.map do |advisory|
      TravelAdvisory.create(name: advisory[:name], score: advisory[:advisory][:score], message: advisory[:advisory][:message])
    end
  end
end
