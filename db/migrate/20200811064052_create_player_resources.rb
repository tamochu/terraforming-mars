class CreatePlayerResources < ActiveRecord::Migration[5.1]
  def change
    create_table :player_resources do |t|
      t.integer :yield, null: false, default: 0
      t.integer :property, null: false, default: 0
      t.references :player, foreign_key: true
      t.references :resource, foreign_key: true

      t.timestamps null: false
    end
  end
end
