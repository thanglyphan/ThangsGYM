class CreateCalenders < ActiveRecord::Migration
  def change
    create_table :calenders do |t|
      t.string :date
      t.string :event
      t.string :cost

      t.timestamps null: false
    end
  end
end
