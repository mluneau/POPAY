class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :bank_account, optional: true
end
