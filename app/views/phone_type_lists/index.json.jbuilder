json.array!(@phone_type_lists) do |phone_type_list|
  json.extract! phone_type_list, :id, :uuid, :name
  json.url phone_type_list_url(phone_type_list, format: :json)
end
