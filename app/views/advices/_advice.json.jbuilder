json.extract! advice, :id, :user_id, :body, :adviceable_id, :adviceable_type, :created_at, :updated_at
json.url advice_url(advice, format: :json)
