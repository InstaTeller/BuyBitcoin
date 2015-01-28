json.array!(@buybitcoins) do |buybitcoin|
  json.extract! buybitcoin, :id, :usd, :btc, :mail, :phone
  json.url buybitcoin_url(buybitcoin, format: :json)
end
