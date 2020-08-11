class CreateResources < ActiveRecord::Migration[5.1]
  def change
    create_table :resources do |t|
      t.string :name, null: false, default: ""
      t.integer :pay_value

      t.timestamps null: false
    end
  end
end
