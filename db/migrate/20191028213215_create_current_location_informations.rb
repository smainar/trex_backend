class CreateCurrentLocationInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :current_location_informations do |t|
      t.string :code
      t.text :passport_info
      t.text  :visa_info
      t.boolean  :has_advisory_warning
      t.text  :vaccine_info
      t.text :health_info
      t.text :transit_info
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
