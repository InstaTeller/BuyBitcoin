class UpdateFilesToBuybitcoin < ActiveRecord::Migration
  def change
    change_column :buybitcoins, :usd, :float
    change_column :buybitcoins, :btc, :float

  end
end
