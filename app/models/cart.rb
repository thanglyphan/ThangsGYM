class Cart < ActiveRecord::Base
  belongs_to :user
  attr_accessible  :id, :item, :price, :cart_user, :picture

  def self.add_item(item, user)
    Cart.create!(:item => item.program, :price => item.price, :cart_user => user.id, :picture => item.picture)
  end

  def self.delete_this_item(item)
    Cart.destroy(item)
  end
end
