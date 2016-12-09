class Menu < ApplicationRecord
	belongs_to :eatery
	has_many :food_items
end
