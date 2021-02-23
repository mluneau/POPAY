class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.date :meeting_date
      t.integer :employee_id
      t.integer :hr_id
      t.string :status_meeting_date

      t.timestamps
    end
  end
end
