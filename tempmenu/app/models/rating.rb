class Rating < ApplicationRecord
	belongs_to :eatery

	validates :name, :eatery, presence: true
end
