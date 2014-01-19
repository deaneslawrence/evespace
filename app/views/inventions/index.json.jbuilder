json.array!(@inventions) do |invention|
  json.extract! invention, :id, :blueprint, :prefered_decryptor
  json.url invention_url(invention, format: :json)
end
