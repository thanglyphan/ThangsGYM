module SessionsHelper
  #COACH
  def change_coach_helper(a, b, user)
    Coach.add_clients(a) #Add new coach here
    if !b.nil?
      User.count_change_limit(user) #This will count amount of changes of a coach. Max 3.
      Coach.remove_clients(b) #Remove old client
    end

    User.add_coach(a, user) #TODO: SOMETHING WRONG?
  end

  #ADD TO CART
  def add_to_cart
    if check_coach_valid #Check if user have selected coaching
      session[:couch?] = true #Set to true so user sees all coaches in payment view.
    end

    item = Item.find_by(:id => params[:id])
    Cart.add_item(item, @current_user)
    redirect_to cart_path
  end

  def delete_item_from_cart
    a = Cart.find_by(:id => params[:id])
    Cart.delete_this_item(a)
    redirect_to(:back)
  end


  #SUBSCRIPTIONS POST METHODS
  def add_subscription
    Subscription.add_email_to_subs(@current_user.email)
    flash[:notice] = "OKSUB"
    redirect_to setting_path
  end

  def remove_subscription
    Subscription.remove_subs(@current_user.email)
    flash[:notice] = "OKUNSUB"
    redirect_to setting_path
  end

  #GENDER
  def add_gender!
    @current_user = User.find_by(:auth_token => cookies[:auth_token])
    if params[:gender].nil?
      return false
    else
      User.add_genders(params[:gender], @current_user)
      return true
    end
  end

  #VIEW LOGIC HERE
  #0 = when users uid and face uid is equal
  def check_face_and_user
    if @current_facebookuser.present?
      for fa in @all_users do
        if fa.faceuid == @current_facebookuser.uid
          return 0
        end
      end
    end
  end

  #LOG OUT USER
  def logout
    session[:facebookuser_id] = nil
    @current_facebookuser = nil
    cookies.delete(:auth_token) #NEW
    redirect_to :action => 'login'
  end

  def add_event_to_calendar
    userid = @current_user.id
    array = params[:datetext].split(' ')
    array2 = array[0].split('/')
    datetext = array2[1] + " " + check_month(array2[0]) + " " + array2[2]
    Calender.add_event(datetext, params[:eventtext], params[:pricetext], array[1] + " " + array[2], params[:commenttext], userid)
    redirect_to(:back)
  end

  def update_calendar_pub_priv
    if params[:btncheck] == "private" && @current_user.present?
      session[:showprivate] = true
    else
      session[:showprivate] = false
    end
    redirect_to(:back)
  end

  def update_event
    @event = Calender.find_by(:id => params[:eventid])

    Calender.update_event(@event, params[:date], params[:event], params[:cost], params[:time], params[:comment])
    redirect_to(:back)
  end
  def delete_event
    @event = Calender.find_by(:id => params[:id])
    Calender.delete_event(@event)
    redirect_to(:back)
  end

  def check_month(value)
    case value
      when '01'
        return "Januar"
      when '02'
        return "Februar"
      when '03'
        return "Mars"
      when '04'
        return "April"
      when '05'
        return "Mai"
      when '06'
        return "Juni"
      when '07'
        return "Juli"
      when '08'
        return "August"
      when '09'
        return "September"
      when '10'
        return "Oktober"
      when '11'
        return "November"
      when '12'
        return "Desember"
    end
  end

end
