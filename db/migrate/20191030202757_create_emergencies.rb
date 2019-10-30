class CreateEmergencies < ActiveRecord::Migration[5.2]
  def change
    create_table :emergencies do |t|
      t.references :user, foreign_key: true
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
  end
end
