class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :avatar
      t.string :name
      t.text :comment

      t.timestamps null: false
    end
  end
end
