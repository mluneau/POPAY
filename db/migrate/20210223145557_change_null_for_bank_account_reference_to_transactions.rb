class ChangeNullForBankAccountReferenceToTransactions < ActiveRecord::Migration[6.1]
  def change
    change_column_null :transactions, :bank_account_id, true
  end
end
