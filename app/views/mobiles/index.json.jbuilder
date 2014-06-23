json.array!(@mobiles) do |mobile|
  json.extract! mobile, :id, :uuid, :type, :national, :number
  json.url mobile_url(mobile, format: :json)
end
