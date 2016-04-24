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
end
