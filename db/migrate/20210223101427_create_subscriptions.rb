class CreateSubscriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :subscriptions do |t|
      t.string :name
      t.integer :monthly_price

      t.timestamps
    end
  end
end
