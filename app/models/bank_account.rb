class BankAccount < ApplicationRecord
  belongs_to :user, foreign_key: true
  has_many :transactions, foreign_key: true
end
