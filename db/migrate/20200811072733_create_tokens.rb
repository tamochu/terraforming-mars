class CreateTokens < ActiveRecord::Migration[5.1]
  def change
    create_table :tokens do |t|
      t.integer :count, null: false, default: 0
      t.references :game, foreign_key: true
      t.references :played_card, foreign_key: true
      t.references :resource, foreign_key: true

      t.timestamps null: false
    end
  end
end
