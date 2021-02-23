class CreateBankAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :bank_accounts do |t|
      t.string :bank_name
      t.string :bank_address
      t.integer :iban
      t.integer :swift
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
