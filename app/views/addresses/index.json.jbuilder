json.array!(@addresses) do |address|
  json.extract! address, :id, :uuid, :type, :national, :province, :city, :address, :postcode
  json.url address_url(address, format: :json)
end
