class CreateCompanyInitialResources < ActiveRecord::Migration[5.1]
  def change
    create_table :company_initial_resources do |t|
      t.integer :yield, null: false, default: 0
      t.integer :property, null: false, default: 0
      t.references :resource, foreign_key: true, null: false
      t.references :company, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
