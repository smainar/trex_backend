class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.boolean :active, default: true
      t.integer :sender_id
      t.integer :receiver_id
      t.string :message
      t.timestamps
    end
  end
end
