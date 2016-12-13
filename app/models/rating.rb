class Rating < ApplicationRecord
	belongs_to :eatery

	validates :stars, :eatery, presence: true
	validates :stars, inclusion: { in: 0..5, message: "must be in range 0-5" }
end
