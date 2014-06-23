json.array!(@subjectionlists) do |subjectionlist|
  json.extract! subjectionlist, :id, :uuid, :name
  json.url subjectionlist_url(subjectionlist, format: :json)
end
