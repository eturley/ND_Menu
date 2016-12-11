class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.text :description
      t.integer :stars

      t.timestamps
    end
  end
end