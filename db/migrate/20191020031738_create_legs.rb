class CreateLegs < ActiveRecord::Migration[5.2]
  def change
    create_table :legs do |t|
      t.references :trip, index: true
      t.string  :name
      t.string  :start_date
      t.string  :end_date
      t.string  :start_location
      t.string  :end_location
      t.timestamps
    end
  end
end
