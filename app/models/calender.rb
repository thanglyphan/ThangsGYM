class Calender < ActiveRecord::Base
  has_many(:users)
  attr_accessible :id, :date, :event, :cost, :time, :comment, :user_id


  def self.add_event(date, event, cost, time, comment, userid)
    Calender.create!(date: date, event: event, cost: cost, time: time, comment: comment, user_id: userid)
  end

  def self.update_event(object, date, event, cost, time, comment)
    e = object
    e.date = date
    e.event = event
    e.cost = cost
    e.time = time
    e.comment = comment
    e.save
  end

  def self.delete_event(event)
    e = event
    e.destroy
  end

end
