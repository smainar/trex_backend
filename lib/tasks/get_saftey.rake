require 'yaml'

namespace :import do
   desc "Add Saftey Info to database"
   task saftey: :environment do

      service = TravelAdvisoryService.new
      service.get_json
    end
  end