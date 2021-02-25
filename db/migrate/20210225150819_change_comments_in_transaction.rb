class ChangeCommentsInTransaction < ActiveRecord::Migration[6.1]
  def change
    change_column :transactions, :comment, :string
  end
end
