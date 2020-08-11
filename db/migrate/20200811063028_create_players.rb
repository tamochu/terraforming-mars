class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.integer :tr, null: false, default: 20
      t.boolean :marker
      t.integer :seat, null: false
      t.references :user, foreign_key: true, null: false
      t.references :game, foreign_key: true, null: false
      t.references :company, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
