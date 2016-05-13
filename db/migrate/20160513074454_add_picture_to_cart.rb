class AddPictureToCart < ActiveRecord::Migration
  def change
    add_column :carts, :picture, :string
  end
end
