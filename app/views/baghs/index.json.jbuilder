json.array!(@baghs) do |bagh|
  json.extract! bagh, :id, :name, :address
  json.url bagh_url(bagh, format: :json)
end
