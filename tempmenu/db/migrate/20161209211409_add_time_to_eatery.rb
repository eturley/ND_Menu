class AddTimeToEatery < ActiveRecord::Migration[5.0]
  def change
    add_column :eateries, :start_time, :string
    add_column :eateries, :end_time, :string
    add_column :eateries, :days, :string
  end
end
