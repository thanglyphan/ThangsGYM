class TrainingController < ApplicationController
  include TrainingHelper
  before_filter :authenticate_user, :only => [:group_training, :bmi_calc, :exercises_body, :my_booking]
  before_filter :save_login_state, :only => [:login, :login_attempt]
  require 'json'


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
    render 'group_training'
  end

  def bmi_calc
    #GroupExercise.del_all
    render 'bmi_calc'
  end

  def exercises_body
    file = File.read('public/json/Workout.json')
    @hash = JSON.parse(file)
    @list_of_musclegroups = []
    for a in @hash do
      @list_of_musclegroups << (a[a.flatten(1).first]['Main Muscle Worked'])
    end
    @uniq_muscle = @list_of_musclegroups.uniq
    render 'exercises_body'
  end
  def pick_musclegroup
    cookies[:chosen_muscle] = params[:musclegroup]
    redirect_to(:back)
  end

  def my_booking
    render 'my_booking'
  end

end
