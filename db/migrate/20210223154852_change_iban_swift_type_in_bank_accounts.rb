class ChangeIbanSwiftTypeInBankAccounts < ActiveRecord::Migration[6.1]
  def change
    change_column :bank_accounts, :swift, :string
    change_column :bank_accounts, :iban, :string
  end
end
