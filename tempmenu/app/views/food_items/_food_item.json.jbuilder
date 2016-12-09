json.extract! food_item, :id, :name, :price, :created_at, :updated_at, :eatery_id
json.url food_item_url(food_item, format: :json)