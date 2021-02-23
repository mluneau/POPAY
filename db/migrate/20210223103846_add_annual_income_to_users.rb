class AddAnnualIncomeToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :annual_income, :integer
  end
end
