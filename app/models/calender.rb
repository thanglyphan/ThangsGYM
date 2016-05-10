class Calender < ActiveRecord::Base
  attr_accessible :id, :date, :event, :cost, :time, :comment


  def self.add_event(date, event, cost, time, comment)
    Calender.create!(date: date, event: event, cost: cost, time: time, comment: comment)
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
