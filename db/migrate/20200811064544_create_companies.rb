class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name, null: false
      t.text :detail, null: false
      t.references :tag, foreign_key: true

      t.timestamps null: false
    end
  end
end
