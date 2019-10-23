class CreateNofications < ActiveRecord::Migration[5.2]
  def change
    create_table :nofications do |t|
      t.boolean :active, default: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
