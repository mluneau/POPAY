class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :appointments, foreign_key: :employee_id
  has_many :hr_appointments, foreign_key: :hr_id, class_name: "Appointment"

  has_many :discussions, foreign_key: :employee_id
  has_many :hr_discussions, foreign_key: :hr_id, class_name: "Discussion"

  belongs_to :company
  has_many :bank_accounts, dependent: :destroy
  has_many :messages
  has_many :transactions
  has_one_attached :avatar

  def available_cash
    monthly_income = annual_income / 12
    daily_income = monthly_income / 20
    effective_worked_days = 0
    beginning_of_month = Date.today.beginning_of_month
    yesterday = Date.today - 1.day

    (beginning_of_month..yesterday).each do |date|
      effective_worked_days += 1 if date.on_weekday?
    end

    effective_worked_days * daily_income + 500
  end
end
