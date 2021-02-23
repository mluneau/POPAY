class Subscription < ApplicationRecord
  has_many :companies, foreign_key: true
end
