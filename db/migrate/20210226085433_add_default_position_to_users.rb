class AddDefaultPositionToUsers < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :position, :string, default: "employee"
  end
end
