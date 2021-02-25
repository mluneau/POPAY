class AddTimeToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :time, :integer
  end
end
