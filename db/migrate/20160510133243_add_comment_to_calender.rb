class AddCommentToCalender < ActiveRecord::Migration
  def change
    add_column :calenders, :comment, :text
  end
end
