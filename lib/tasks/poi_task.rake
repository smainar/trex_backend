require 'yaml'

namespace :import do
   desc "Add Saftey Info to database"
   task pois: :environment do

      service = TriposoService.new
      service.create_poi
    end
  end
