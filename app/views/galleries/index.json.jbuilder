json.array!(@galleries) do |gallery|
  json.extract! gallery, :id, :gallert_name, :description, :user_id
  json.url gallery_url(gallery, format: :json)
end
