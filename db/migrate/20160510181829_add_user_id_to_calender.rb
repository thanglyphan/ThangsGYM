class AddUserIdToCalender < ActiveRecord::Migration
  def change
    add_column :calenders, :user_id, :string
  end
end
