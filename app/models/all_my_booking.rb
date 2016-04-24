class AllMyBooking < ActiveRecord::Base
  belongs_to :user
  attr_accessible :id, :user_id, :value

  def self.add_recent(currentuser,group)
    AllMyBooking.create!(user_id: currentuser.id, value: "Name: " + group.name + ". Place: " + group.place + ". Instructor: " + group.intructor + ".")
  end

end
