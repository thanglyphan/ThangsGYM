class AddUserIdToDragonflyImages < ActiveRecord::Migration
  def change
    add_column :dragonfly_images, :user_id, :string
  end
end
