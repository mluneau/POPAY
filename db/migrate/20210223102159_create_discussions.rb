class CreateDiscussions < ActiveRecord::Migration[6.1]
  def change
    create_table :discussions do |t|
      t.integer :employee_id
      t.integer :hr_id
      t.string :topic

      t.timestamps
    end
  end
end
