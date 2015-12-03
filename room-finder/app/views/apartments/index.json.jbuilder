json.array!(@apartments) do |apartment|
  json.extract! apartment, :id, :floor, :room, :price, :description, :isVacant, :Apt_complex_id
  json.url apartment_url(apartment, format: :json)
end
