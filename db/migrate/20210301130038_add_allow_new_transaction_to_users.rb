class AddAllowNewTransactionToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :allow_new_transaction, :boolean, default: true
  end
end
