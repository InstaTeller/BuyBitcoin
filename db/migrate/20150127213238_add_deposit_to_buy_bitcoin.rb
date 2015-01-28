class AddDepositToBuyBitcoin < ActiveRecord::Migration
  def change
    add_column :buybitcoins, :deposit_to, :string
  end
end
