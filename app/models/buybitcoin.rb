class Buybitcoin < ActiveRecord::Base
  validates :usd, numericality: true
  validates :btc, numericality: true
  validates :mail, presence: true
  validates :phone, presence: true
end
