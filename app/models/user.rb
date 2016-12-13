class User < ApplicationRecord
  has_secure_password
  validates :email, :password, presence: true

  def name
  	self.email[/[^@]+/]
  end
end
