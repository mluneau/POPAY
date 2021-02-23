class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.date :meeting_date
      t.references :employee, null: false, foreign_key: { to_table: :users} 
      t.references :hr, null: false, foreign_key: { to_table: :users}
      t.string :status_meeting_date

      t.timestamps
    end
  end
end
