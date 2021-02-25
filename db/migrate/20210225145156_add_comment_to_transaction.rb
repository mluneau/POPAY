class AddCommentToTransaction < ActiveRecord::Migration[6.1]
  def change
    add_column :transactions, :comment, :text
  end
end
