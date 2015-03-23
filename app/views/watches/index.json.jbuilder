json.array!(@watches) do |watch|
  json.extract! watch, :id, :brand, :model, :picture
  json.url watch_url(watch, format: :json)
end
