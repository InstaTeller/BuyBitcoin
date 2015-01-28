class CreateBuybitcoins < ActiveRecord::Migration
  def change
    create_table :buybitcoins do |t|
      t.float :usd
      t.float :btc
      t.string :mail
      t.string :phone

      t.timestamps null: false
    end
  end
end
