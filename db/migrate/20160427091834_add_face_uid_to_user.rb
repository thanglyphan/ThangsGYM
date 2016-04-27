class AddFaceUidToUser < ActiveRecord::Migration
  def change
    add_column :users, :faceuid, :string
  end
end
