class CreatePlayedCards < ActiveRecord::Migration[5.1]
  def change
    create_table :played_cards do |t|
      t.boolean :marker
      t.references :player, foreign_key: true
      t.references :card, foreign_key: true

      t.timestamps null: false
    end
  end
end
