class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :number_of_employees
      t.references :subscription, null: false, foreign_key: true

      t.timestamps
    end
  end
end
