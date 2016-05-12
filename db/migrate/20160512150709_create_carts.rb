class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.string :item
      t.string :price

      t.timestamps null: false
    end
  end
end
