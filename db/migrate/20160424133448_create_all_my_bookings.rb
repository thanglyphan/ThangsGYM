class CreateAllMyBookings < ActiveRecord::Migration
  def change
    create_table :all_my_bookings do |t|
      t.integer :user_id
      t.string :value

      t.timestamps null: false
    end
  end
end
