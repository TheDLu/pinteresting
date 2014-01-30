json.array!(@corkboards) do |corkboard|
  json.extract! corkboard, :id, :description, :name
  json.url corkboard_url(corkboard, format: :json)
end
