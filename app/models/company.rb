class Company < ApplicationRecord
  belongs_to :subscription
  has_many :users, dependent: :destroy
end
