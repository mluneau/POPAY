class Subscription < ApplicationRecord
  has_many :companies, dependent: :destroy
end
