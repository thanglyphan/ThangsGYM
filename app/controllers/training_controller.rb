class TrainingController < ApplicationController
  include TrainingHelper
  before_filter :authenticate_user, :only => [:group_training, :bmi_calc, :exercises_body, :my_booking]
  before_filter :save_login_state, :only => [:login, :login_attempt]



  def group_training
    if(session[:day].nil?)
      case Time.now.utc.wday
        when 0
          session[:day] = "Sunday"
        when 1
          session[:day] = "Monday"
        when 2
          session[:day] = "Tuesday"
        when 3
          session[:day] = "Wednesday"
        when 4
          session[:day] = "Thursday"
        when 5
          session[:day] = "Friday"
        when 6
          session[:day] = "Saturday"
      end
    end
    flash[:notice] = Time.now.utc.wday
    render 'group_training'
  end

  def bmi_calc
    #GroupExercise.del_all
    render 'bmi_calc'
  end

  def exercises_body
    render 'exercises_body'
  end

  def my_booking
    render 'my_booking'
  end

end
