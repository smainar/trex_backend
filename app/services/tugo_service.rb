class TugoService

  def initialize(user)
    @user = user
    # @current_location =  Geocoder.search([user[:latitude], user[:longitude]]).first.country_code.upcase
  end

  def conn
    conn = Faraday.new(url: "https://api.tugo.com/v1/travelsafe/countries/") do |faraday|
      faraday.headers["Content-Type"] = "application/x-www-form-urlencoded"
      faraday.headers["X-Auth-API-Key"] = ENV["TUGO_KEY"]
      faraday.adapter Faraday.default_adapter
    end
  end


  # def get_countries
  #   response = conn.get
  #   parsed  = JSON.parse(response.body, symbolize_names: true)
  #   parsed.map do |code|
  #     code[:id]
  #   end
  # end


  def get_json
    response = conn.get(@current_location)
    parsed  = JSON.parse(response.body, symbolize_names: true)

  end

  def create_travel_info
    data = get_json
    a = CurrentLocationInformation.create(
      code: @current_location,
      passport_info: data[:entryExitRequirement][:requirementInfo][1][:description],
      visa_info: data[:entryExitRequirement][:requirementInfo][2][:description],
      has_advisory_warning: data[:hasAdvisoryWarning],
      vaccine_info: data[:health][:diseasesAndVaccinesInfo][:Vaccines].first[:description],
      health_info: data[:health][:healthInfo].first[:description],
      transit_info: data[:safety][:safetyInfo][6][:description],
      user_id: @user.id
    )
  end

  def create_embassies
    get_json[:offices].each do |embassy|
      Embassy.create(
        name: embassy[:type],
        address: embassy[:address],
        passport_services: embassy[:hasPassportServices],
        lat: embassy[:latitude],
        long: embassy[:longitude],
        phone: embassy[:phone],
        website: embassy[:website])
      end
    end
  end
