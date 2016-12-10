class AddPasswordDigestToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :Users, :string
    add_column :users, :password_digest, :string
  end
end
