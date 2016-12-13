class Rating < ApplicationRecord
	belongs_to :eatery

	validates :stars, :eatery, presence: true
	validates :stars, :inclusion => {:in => [1,5], :message => "must be 1-5"}
end
