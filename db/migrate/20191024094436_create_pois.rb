class CreatePois < ActiveRecord::Migration[5.2]
  def change
    create_table :pois do |t|
      t.references :destination, foreign_key: true
      t.string :name
      t.string :type
      t.string :snippet
      t.float :score
      t.timestamps
    end
  end
end
