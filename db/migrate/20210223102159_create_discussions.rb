class CreateDiscussions < ActiveRecord::Migration[6.1]
  def change
    create_table :discussions do |t|
      t.references :employee, null: false, foreign_key: { to_table: :users} 
      t.references :hr, null: false, foreign_key: { to_table: :users}
      t.string :topic

      t.timestamps
    end
  end
end
