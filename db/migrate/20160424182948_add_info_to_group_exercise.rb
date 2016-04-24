class AddInfoToGroupExercise < ActiveRecord::Migration
  def change
    add_column :group_exercises, :info, :text
  end
end
