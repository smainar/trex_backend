namespace :import do
 desc "Add Advisory Info to database"
 task advisories: :environment do
    service = TravelAdvisoryService.new
    service.get_json
  end
end
