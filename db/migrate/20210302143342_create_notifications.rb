class CreateNotifications < ActiveRecord::Migration[6.1]
  def change
    create_table :notifications do |t|
      t.string :content
      t.references :user, null: false, foreign_key: true
      t.string :category

      t.timestamps
    end
  end
end
