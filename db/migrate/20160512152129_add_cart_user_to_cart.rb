class AddCartUserToCart < ActiveRecord::Migration
  def change
    add_column :carts, :cart_user, :string
  end
end
