class Calender < ActiveRecord::Base


  def self.add_event(date, event, cost, time)
    Calender.create!(date: date, event: event, cost: cost, time: time)
  end

  def self.delete_event(event)
    e = event
    e.destroy
  end

end
