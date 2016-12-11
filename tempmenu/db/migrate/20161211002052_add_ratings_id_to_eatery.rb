class AddRatingsIdToEatery < ActiveRecord::Migration[5.0]
  def change
    add_column :eateries, :rating_idwq, :integer
  end
end
