json.array!(@phones) do |phone|
  json.extract! phone, :id, :uuid, :type, :national, :city, :number, :extension
  json.url phone_url(phone, format: :json)
end
