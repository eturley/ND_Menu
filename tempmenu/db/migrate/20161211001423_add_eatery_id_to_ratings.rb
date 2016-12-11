class AddEateryIdToRatings < ActiveRecord::Migration[5.0]
  def change
    add_column :ratings, :eatery_id, :integer
  end
end
