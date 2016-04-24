class GroupExercise < ActiveRecord::Base
  has_many :users
  attr_accessible :id, :weekday, :time, :name, :place, :intructor, :available_slots, :info


  def self.del_all
    for a in GroupExercise.all
      a.destroy
    end
  end
end
