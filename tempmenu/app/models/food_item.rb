class FoodItem < ApplicationRecord
  # jarp: should be lower case and with underscores. They are defining methods
  belongs_to :eatery
end
