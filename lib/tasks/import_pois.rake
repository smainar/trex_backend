namespace :import do
 desc "Import POIs"
 task pois: :environment do
    service = TriposoService.new
    service.get_json
  end
end
