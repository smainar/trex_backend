namespace :import do
 desc "Import country_informations"
 task info: :environment do
    service = TugoService.new
    service.create_travel_info
  end
end
