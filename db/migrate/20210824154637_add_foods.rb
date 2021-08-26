class AddFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :quantity
      t.string :unit
      t.integer :days_until_expiration
      t.date :date_of_purchase
      t.string :category
      t.string :img_url
    end
  end
end