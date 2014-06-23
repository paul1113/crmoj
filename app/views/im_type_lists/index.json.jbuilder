json.array!(@im_type_lists) do |im_type_list|
  json.extract! im_type_list, :id, :uuid, :name
  json.url im_type_list_url(im_type_list, format: :json)
end
