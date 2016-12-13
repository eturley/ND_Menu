json.extract! eatery, :id, :name, :description, :location, :created_at, :updated_at, :food_item_id, :rating_id
json.url eatery_url(eatery, format: :json)