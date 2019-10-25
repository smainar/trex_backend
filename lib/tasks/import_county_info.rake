namespace :import do
 desc "Import Embassies"
 task info: :environment do
    service = TugoService.new
    service.create_travel_info
  end
end
