json.array!(@departmentlists) do |departmentlist|
  json.extract! departmentlist, :id, :uuid, :name
  json.url departmentlist_url(departmentlist, format: :json)
end
