class CreateTransportations < ActiveRecord::Migration[5.2]
  def change
    create_table :transportations do |t|
      t.integer :type, default: 0
      t.string :departure_time
      t.string :arrival_time
      t.string :departure_city
      t.string :arrival_city
      t.references :leg, foreign_key: true

      t.timestamps
    end
  end
end
