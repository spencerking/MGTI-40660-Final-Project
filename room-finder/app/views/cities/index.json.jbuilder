json.array!(@cities) do |city|
  json.extract! city, :id, :state, :population
  json.url city_url(city, format: :json)
end
