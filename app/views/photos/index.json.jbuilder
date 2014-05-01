json.array!(@photos) do |photo|
  json.extract! photo, :id, :picture, :description, :gallery_id
  json.url photo_url(photo, format: :json)
end
