class AddTimeToCalender < ActiveRecord::Migration
  def change
    add_column :calenders, :time, :string
  end
end
