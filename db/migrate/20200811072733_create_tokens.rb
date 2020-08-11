class CreateTokens < ActiveRecord::Migration[5.1]
  def change
    create_table :tokens do |t|
      t.integer :count, null: false, default: 0
      t.references :game, foreign_key: true, null: false
      t.references :played_card, foreign_key: true, null: false
      t.references :resource, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
