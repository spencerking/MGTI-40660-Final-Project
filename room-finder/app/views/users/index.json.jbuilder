json.array!(@users) do |user|
  json.extract! user, :id, :name, :age, :gender, :isAdmin, :Company_id, :City_id, :Apartment_id
  json.url user_url(user, format: :json)
end
