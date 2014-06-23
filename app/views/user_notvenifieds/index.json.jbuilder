json.array!(@user_notvenifieds) do |user_notvenified|
  json.extract! user_notvenified, :id, :name, :uuid, :birthday, :property, :mobile, :sender, :mail, :department, :position, :area, :subjection, :tel, :fax, :im, :id_card, :address, :postcode
  json.url user_notvenified_url(user_notvenified, format: :json)
end
