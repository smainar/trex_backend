class CreateLodgings < ActiveRecord::Migration[5.2]
  def change
    create_table :lodgings do |t|
      t.string :name
      t.string :arrival_date
      t.string :departure_date
      t.string :city
      t.references :destination, foreign_key: true

      t.timestamps
    end
  end
end
