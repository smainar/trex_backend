class CreateTravelAdvisories < ActiveRecord::Migration[5.2]
  def change
    create_table :travel_advisories do |t|
      t.string :name
      t.float :score
      t.string :message
      t.timestamps
    end
  end
end
