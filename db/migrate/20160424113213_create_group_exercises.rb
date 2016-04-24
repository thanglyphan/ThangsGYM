class CreateGroupExercises < ActiveRecord::Migration
  def change
    create_table :group_exercises do |t|
      t.string :weekday
      t.string :time
      t.string :name
      t.string :place
      t.string :intructor
      t.integer :available_slots

      t.timestamps null: false
    end
  end
end
