class CreateDecks < ActiveRecord::Migration[5.1]
  def change
    create_table :decks do |t|
      t.integer :sort_index, null: false
      t.references :card, foreign_key: true
      t.references :game, foreign_key: true

      t.timestamps null: false
    end
  end
end
