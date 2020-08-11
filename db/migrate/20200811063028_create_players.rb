class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.integer :tr, null: false, default: 20
      t.boolean :marker
      t.integer :seat, null: true
      t.references :user, foreign_key: true
      t.references :game, foreign_key: true
      t.references :company, foreign_key: true

      t.timestamps null: false
    end
  end
end
