class Transaction < ApplicationRecord
  belongs_to :user, foreign_key: true
  belongs_to :bank_accounts, foreign_key: true
end
