json.array!(@users) do |user|
  json.extract! user, :id, :name, :uuid, :birthday, :property, :mobile, :sender, :mail, :department, :position, :area, :subjection, :tel, :fax, :im, :id_card, :address, :postcode
  json.url user_url(user, format: :json)
end
