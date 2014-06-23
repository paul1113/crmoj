json.array!(@mobile_type_lists) do |mobile_type_list|
  json.extract! mobile_type_list, :id, :uuid, :name
  json.url mobile_type_list_url(mobile_type_list, format: :json)
end
