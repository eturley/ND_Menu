json.extract! rating, :id, :description, :stars, :created_at, :updated_at, :eatery_id
json.url rating_url(rating, format: :json)