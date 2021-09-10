class Wallet < ApplicationRecord

  has_many :cash_flows, dependent: :destroy

  validates :money, presence: true
end
