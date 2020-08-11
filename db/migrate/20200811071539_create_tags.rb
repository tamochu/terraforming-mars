class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      t.string :name, null: false, default: ""
      t.references :resource, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
