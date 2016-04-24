module TrainingHelper

  def calculate_bmi
    if(params[:height] == ""|| params[:weight] == "")
      flash[:alert] = "Vennligst fyll inn høyde/vekt!"
    else
      h = params[:height].to_f / 100
      w = params[:weight].to_f
      hx2 = h * h
      bmi = w / hx2
      flash[:notice] = bmi
    end
    redirect_to(:back)
  end

  def book_group
    @current_user = User.find_by(:auth_token => cookies[:auth_token])
    @group = GroupExercise.find_by(:id => params[:id])
    AllMyBooking.add_recent(@current_user, @group)
    User.add_group_id(@current_user, @group)
    redirect_to(:back)
  end

  def remove_booking
    @current_user = User.find_by(:auth_token => cookies[:auth_token])
    User.remove_group_id(@current_user)
    redirect_to(:back)
  end
end
