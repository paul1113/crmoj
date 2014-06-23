json.array!(@arealists) do |arealist|
  json.extract! arealist, :id, :uuid, :name
  json.url arealist_url(arealist, format: :json)
end
