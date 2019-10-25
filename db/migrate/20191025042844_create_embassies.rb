class CreateEmbassies < ActiveRecord::Migration[5.2]
  def change
    create_table :embassies do |t|
      t.string :name
      t.string :address
      t.boolean :passport_services
      t.float :lat
      t.float :long
      t.string  :phone
      t.string :website
      t.timestamps
    end
  end
end
