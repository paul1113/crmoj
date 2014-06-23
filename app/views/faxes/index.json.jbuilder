json.array!(@faxes) do |fax|
  json.extract! fax, :id, :uuid, :type, :national, :city, :number, :extension
  json.url fax_url(fax, format: :json)
end
