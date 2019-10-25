class TugoService

  def initialize(destination)
    @destination = destination
  end

  def conn
    conn = Faraday.new(url: "https://api.tugo.com/v1/travelsafe/countries/#{@destination}") do |faraday|
      faraday.headers["X-Auth-API-Key"] = ENV["TUGO_KEY"]
      faraday.adapter Faraday.default_adapter
    end
  end

  def get_json
    response = conn.get
    parsed  = JSON.parse(response.body, symbolize_names: true)
    binding.pry
    poi = parsed[:results]
    binding.pry
  end

  def create_travel_info
    get_json.map do |advisory_data|
      CountryInfo.new(passport_info: advisory_data[:entryExitRequirement][:requirementInfo][1][:description],
        visa_info: advisory_data[:entryExitRequirement][:requirementInfo][2][:description],
        has_advisory_warning: advisory_data[:hasAdvisoryWarning],
        vaccine_info: advisory_data[:health][:diseasesAndVaccinesInfo][:Vaccines].first[:description],
        health_info: advisory_data[:health][:healthInfo].first[:description],
        transit_info: advisory_data[:safety][:safetyInfo][6])
      end
    end
  end
