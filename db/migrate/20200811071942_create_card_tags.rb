class CreateCardTags < ActiveRecord::Migration[5.1]
  def change
    create_table :card_tags do |t|
      t.integer :count, null: false, default: 1
      t.references :tag, foreign_key: true, null: false
      t.references :card, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
