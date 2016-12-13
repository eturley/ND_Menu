class Eatery < ApplicationRecord
	has_many :food_items
	has_many :date_ranges
	has_many :ratings

	validates :name, :location, :description, presence: true
	validates :name, uniqueness: true

	def inventory
		size = 0
		size = self.food_items.count
		return size
	end

	def average
		total = 0
		self.ratings.each do |r|
			total = total + r.stars
		end
    if self.ratings.count == 0
      return 0
    end
		total/self.ratings.count
	end

end
