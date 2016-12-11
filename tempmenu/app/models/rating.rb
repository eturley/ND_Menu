class Rating < ApplicationRecord
	belongs_to :eatery

	validates :stars, :eatery, presence: true
end
