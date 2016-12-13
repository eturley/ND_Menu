module ApplicationHelper
  def random_bg
    images = []
    (1..6).each {|i| images << "bg0#{i}.jpg"}
    images.sample
  end
end
