json.array!(@email_type_lists) do |email_type_list|
  json.extract! email_type_list, :id, :uuid, :name
  json.url email_type_list_url(email_type_list, format: :json)
end
