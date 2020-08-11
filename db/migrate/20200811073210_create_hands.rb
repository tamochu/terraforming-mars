class CreateHands < ActiveRecord::Migration[5.1]
  def change
    create_table :hands do |t|
      t.references :player, foreign_key: true, null: false
      t.references :card, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
