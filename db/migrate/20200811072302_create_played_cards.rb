class CreatePlayedCards < ActiveRecord::Migration[5.1]
  def change
    create_table :played_cards do |t|
      t.boolean :marker
      t.references :player, foreign_key: true, null: false
      t.references :card, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
