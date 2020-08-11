class CreateHands < ActiveRecord::Migration[5.1]
  def change
    create_table :hands do |t|
      t.references :player, foreign_key: true
      t.references :card, foreign_key: true

      t.timestamps null: false
    end
  end
end
