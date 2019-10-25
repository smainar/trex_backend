class CreateCountryInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :country_informations do |t|
      t.text :passport_info
      t.text  :visa_info
      t.boolean  :has_advisory_warning
      t.text  :vaccine_info
      t.text :health_info
      t.text :transit_info
      t.timestamps
    end
  end
end
