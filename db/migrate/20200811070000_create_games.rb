class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :temperature, null: false, default: 0
      t.integer :oxygen, null: false, default: 0
      t.integer :sea, null: false, default: 0
      t.integer :round, null: false, default: 0
      t.integer :start_seat, null: false, default: 0

      t.timestamps null: false
    end
  end
end
