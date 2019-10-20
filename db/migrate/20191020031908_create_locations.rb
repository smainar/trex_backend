class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.references :leg, index: true
      t.string  :city
      t.string  :country
      t.string  :emergency_phone
      t.timestamps
    end
  end
end
