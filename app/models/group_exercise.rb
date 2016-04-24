class GroupExercise < ActiveRecord::Base
  has_many :users
  attr_accessible :id, :weekday, :time, :name, :place, :available_slots



end
