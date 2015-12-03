json.array!(@apt_complexes) do |apt_complex|
  json.extract! apt_complex, :id, :street, :description, :floors, :City_id, :Company_id
  json.url apt_complex_url(apt_complex, format: :json)
end
