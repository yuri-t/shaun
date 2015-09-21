json.array!(@favorite_sites) do |favorite_site|
  json.extract! favorite_site, :id
  json.url favorite_site_url(favorite_site, format: :json)
end
