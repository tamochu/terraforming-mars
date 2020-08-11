class CreateTiles < ActiveRecord::Migration[5.1]
  def change
    create_table :tiles do |t|
      t.integer :kind, null: false, default: 0
      t.integer :x, null: false, default: 0
      t.integer :y, null: false, default: 0
      t.references :game, foreign_key: true, null: false
      t.references :player, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
