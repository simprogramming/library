class Wallet < ApplicationRecord

  validates :money, presence: true
end
