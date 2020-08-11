class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string :name, null: false, default: ""
      t.text :detail
      t.integer :cost, null: false, default: 0
      t.integer :cond_kind
      t.integer :cond_value

      t.timestamps null: false
    end
  end
end
