json.array!(@positionlists) do |positionlist|
  json.extract! positionlist, :id, :uuid, :name
  json.url positionlist_url(positionlist, format: :json)
end
