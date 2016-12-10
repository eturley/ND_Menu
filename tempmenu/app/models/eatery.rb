class Eatery < ApplicationRecord
	has_many :food_items
	has_many :date_ranges

	validates :name, :location, :description, presence: true
	validates :name, uniqueness: true

	def inventory
		size = 0
		size = self.food_items.count
		return size
	end

end
