class Calender < ActiveRecord::Base
  attr_accessible :id, :date, :event, :cost, :time, :comment


  def self.add_event(date, event, cost, time, comment)
    Calender.create!(date: date, event: event, cost: cost, time: time, comment: comment)
  end

  def self.delete_event(event)
    e = event
    e.destroy
  end

end
