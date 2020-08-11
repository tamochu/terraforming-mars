class CreateGameLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :game_logs do |t|
      t.text :log
      t.boolean :show_on_playing, null: false
      t.references :game, foreign_key: true

      t.timestamps null: false
    end
  end
end
