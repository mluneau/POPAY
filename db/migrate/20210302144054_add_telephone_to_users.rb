class AddTelephoneToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :telephone, :string
  end
end
