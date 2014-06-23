json.array!(@fax_type_lists) do |fax_type_list|
  json.extract! fax_type_list, :id, :uuid, :name
  json.url fax_type_list_url(fax_type_list, format: :json)
end
