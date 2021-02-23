class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :appointments, foreign_key: :employee_id
  has_many :hr_appointments, foreign_key: :hr_id, class_name: "Appointment"

  has_many :discussions, foreign_key: :employee_id
  has_many :hr_discussions, foreign_key: :hr_id, class_name: "Discussion"
end
