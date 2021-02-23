class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.integer :amount
      t.date :due_date
      t.string :status
      t.date :transfer_date
      t.references :user, null: false, foreign_key: true
      t.references :bank_account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
