class AddColumnsToFriendships < ActiveRecord::Migration[5.2]
  def change
    add_column :friendships, :emergency_contact, :boolean, default: false
    add_column :friendships, :relationship, :integer, default: 0
  end
end
