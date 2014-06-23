json.array!(@address_type_lists) do |address_type_list|
  json.extract! address_type_list, :id, :uuid, :name
  json.url address_type_list_url(address_type_list, format: :json)
end
