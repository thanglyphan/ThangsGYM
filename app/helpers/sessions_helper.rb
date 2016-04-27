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

  #SUBSCRIPTIONS POST METHODS
  def add_subscription
    Subscription.add_email_to_subs(@current_user.email)
    flash[:notice] = "You have successfully subscribed to .. with #{@current_user.email}. You will recieve the newest news!"
    redirect_to setting_path
  end

  def remove_subscription
    Subscription.remove_subs(@current_user.email)
    flash[:notice] = "You have successfully unsubscribed to .. with #{@current_user.email}"
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
  #1 = when users uid is null, but user have signed in as facebook
  def check_face_and_user
    if @current_facebookuser.present?
      if fa.faceuid == @current_facebookuser.uid
        return 0
      elsif fa.faceuid.nil? && @current_facebookuser.present?
        return 1
      end
    else
      return 1
    end
  end

  #LOG OUT USER
  def logout
    session[:facebookuser_id] = nil
    @current_facebookuser = nil
    cookies.delete(:auth_token) #NEW
    redirect_to :action => 'login'
  end

  #PICTURE UPLOAD




end
