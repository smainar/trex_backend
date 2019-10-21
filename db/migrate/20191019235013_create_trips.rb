class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.references :user, index: true
      t.string  :name
      t.string  :start_date
      t.string  :end_date
    end
  end
end
