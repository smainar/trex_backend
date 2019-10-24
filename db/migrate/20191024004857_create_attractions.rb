class CreateAttractions < ActiveRecord::Migration[5.2]
  def change
    create_table :attractions do |t|
  t.references :destination, foreign_key: true
      t.timestamps
    end
  end
end
