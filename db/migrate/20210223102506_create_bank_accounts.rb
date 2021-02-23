class CreateBankAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :bank_accounts do |t|
      t.string :bank_name
      t.string :bank_address
      t.integer :iban
      t.integer :swift

      t.timestamps
    end
  end
end
