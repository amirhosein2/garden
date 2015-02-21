json.array!(@flowers) do |flower|
  json.extract! flower, :id, :content, :bagh_id
  json.url flower_url(flower, format: :json)
end
