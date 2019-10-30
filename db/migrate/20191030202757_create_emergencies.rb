class CreateEmergencies < ActiveRecord::Migration[5.2]
  def change
    create_table :emergencies do |t|
      
      t.timestamps
    end
  end
end
