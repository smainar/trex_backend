class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.boolean :unread, default: true
      t.integer :sender_id
      t.integer :receiver_id
      t.string :message
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
  end
end
