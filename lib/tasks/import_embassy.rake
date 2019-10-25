namespace :import do
 desc "Import Embassies"
 task embassy: :environment do
    service = TugoService.new("FR")
    service.create_embassies
  end
end
