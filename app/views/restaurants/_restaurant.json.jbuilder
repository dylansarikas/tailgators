json.extract! restaurant, :id, :name, :link, :description, :address, :stadium_id, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
