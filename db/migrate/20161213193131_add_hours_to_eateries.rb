class AddHoursToEateries < ActiveRecord::Migration[5.0]
  def change
    add_column :eateries, :hours, :string
  end
end
