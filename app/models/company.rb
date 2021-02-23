class Company < ApplicationRecord
  belongs_to :subscription, foreign_key: true
  has_many :users, foreign_key: true
end
