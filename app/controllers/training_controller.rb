class TrainingController < ApplicationController
  before_filter :authenticate_user, :only => [:group_training, :bmi_calc]
  before_filter :save_login_state, :only => [:login, :login_attempt]

  def group_training
    render 'group_training'
  end

  def bmi_calc
    render 'bmi_calc'
  end

  def exercises_body
    render 'exercises_body'
  end
end
