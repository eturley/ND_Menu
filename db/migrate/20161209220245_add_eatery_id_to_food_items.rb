class AddEateryIdToFoodItems < ActiveRecord::Migration[5.0]
  def change
    add_column :food_items, :eatery_id, :integer
  end
end
