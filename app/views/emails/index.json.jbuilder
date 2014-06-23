json.array!(@emails) do |email|
  json.extract! email, :id, :uuid, :mail
  json.url email_url(email, format: :json)
end
