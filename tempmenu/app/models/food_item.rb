class FoodItem < ApplicationRecord
  # jarp: should be lower case and with underscores. They are defining methods
  belongs_to :eatery

  def full_price
  	String line = '$'
  	adjusted_price = '%.2f' % price
  	line = line + adjusted_price.to_s
  	return line
  end
end
