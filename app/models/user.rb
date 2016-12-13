class User < ApplicationRecord
  has_secure_password
  validates :email, :password, presence: true

  def name
  	string_name = self.email
  	return my_string[/[^@]+/]
  end
end
