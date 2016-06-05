class SessionsController < ApplicationController
  include SessionsHelper
  before_filter :authenticate_user, :only => [:home, :shop,:profile, :setting, :cart, :payment, :admin, :training], :except => [:add_comment]
  before_filter :save_login_state, :only => [:login, :login_attempt], :except => [:add_comment]
  before_action :load_user_and_subs, :only =>[:home, :profile, :setting, :payment, :admin, :training]
  attr_accessor :items
  before_action :get_user #Put this here to use @current_user all place in here

  def get_user
    @current_user = User.find_by(:auth_token => cookies[:auth_token])#User.find session[:user_id]
    @admin = User.find_by(:admin => 1)
  end

  def about_me
    render 'sessions/about/about_me'
  end

  def about_site
    render 'sessions/about/about_site'
  end

  def contact
    render 'contact'
  end

  def review
    render 'review'
  end

  def calender
    render 'calender'
  end

  def shop
    render 'shop'
  end

  def cart
    render 'cart'
  end

  def delete_comment
    @comment = Review.find_by(:id => params[:id])
    Review.delete_comment(@comment)
    redirect_to(:back)
  end

  def add_comment
    @input = params[:my_comment]
    if @input.present?
      if @current_facebookuser.present? && @current_user.present?
        Review.add_commentfacebook(@input, @current_facebookuser.uid, @current_facebookuser.name)
      elsif @current_user.present?
        Review.add_comment(@input, @current_user.profile_pic, @current_user.username)
      else
        Review.add_comment(@input, nil, "Gjest")
      end
    end
    redirect_to(:back)
  end

  def login_attempt_with_facebook
    a = User.find_by(:faceuid => @current_facebookuser.uid)
    authorized_user_by_facebook = User.authenticate(a.email, params[:login_password])

    if authorized_user_by_facebook && authorized_user_by_facebook.faceuid.present?
      cookies.permanent[:auth_token] = authorized_user_by_facebook.auth_token #NEW
      redirect_to home_path #(:action => 'home')
    else
      flash[:notice] = "Invalid Username or Password"
      render "login"
    end
  end

  def login_attempt
    authorized_user = User.authenticate(params[:username_or_email],params[:login_password])

    if authorized_user
      if params[:remember_me] #NEW
        cookies.permanent[:auth_token] = authorized_user.auth_token #NEW
      else
        cookies[:auth_token] = authorized_user.auth_token #NEW
      end
      if authorized_user.faceuid.nil? && @current_facebookuser.present?
        User.add_faceuid(authorized_user, @current_facebookuser)
      elsif authorized_user.faceuid.present? && @current_facebookuser.present? && @current_facebookuser.uid != authorized_user.faceuid
        flash[:notice] = "Noe gikk galt, prøv igjen" #User can not log in to other acc than own.
        cookies.delete(:auth_token) #NEW
      end

      redirect_to home_path #(:action => 'home')
    else
      flash[:notice] = "Invalid Username or Password"
      render "login"
    end
  end

  def delete_faceuid
    User.delete_faceuid(@current_facebookuser)
    redirect_to(:back)
  end

  def status
    @coaches = Coach.all.map{|c| [c.name]}
    session[:change_coach] = true
    render 'status'
  end

  def change_password
    authorized_user = User.authenticate(params[:username_or_email],params[:login_password])
    #@current_user = User.find session[:user_id]
    @current_user = User.find_by(:auth_token => cookies[:auth_token])

    if @current_user == authorized_user
      UserMailer.change_pw_confirmed(authorized_user).deliver_now
      User.change_pw(params[:username_or_email], params[:login_new_password])
      flash[:notice] = "Ditt passord har blitt endret! :)"
      redirect_to setting_path
    else
      flash[:error]= "Feil brukernavn/email/passord, prøv igjen."
      redirect_to setting_path
    end
  end

  def send_me_mail
    UserMailer.send_thang_email(params[:InputName], params[:InputEmail], params[:subject], params[:InputMessage]).deliver_now
    flash[:notice] = "OK"
    redirect_to(:back)
  end


  def go_checkout
    if session[:checkcoach] == true && session[:couch?] == true
      redirect_to new_transaction_path
    elsif session[:couch?] == false
      redirect_to new_transaction_path
    else
      redirect_to(:back)
    end
    session[:checkcoach] = false
  end

  def check_coach_valid
    session[:couch?] = false #Set to false so user can chose yes or no everytime one purchase is made.
    return params[:need_coach?]
  end

  def select_coach
    @current_user = User.find_by(:auth_token => cookies[:auth_token])


    a = Coach.find_by(:name => params[:coach])#Selected coach
    if a.present?
      session[:checkcoach] = true
      session[:couch?] = true
      b = Coach.find_by(:id => @current_user.coach_id) #Old coach
      if a != b
        change_coach_helper(a,b,@current_user) #Calling helper method.
      end
      flash[:notice] = "Du har valgt coach: #{a.name}."
      redirect_to(:back)#redirect_to payment_path
    else
      flash[:notice] = "Du må velge en coach"
      redirect_to(:back)#redirect_to payment_path
    end



  end

  def reset_pw
    if User.find_user_email(params[:email])
      new_password = (0...8).map { (65 + rand(26)).chr }.join
      User.change_pw(params[:email], new_password)
      change_this_user = User.find_by(:email => params[:email])
      UserMailer.reset_pw_confirmed(change_this_user, new_password).deliver_now
      flash[:notice] = "Please check your email for reset, log in with the new password!"
      redirect_to login_path #(:action => 'login')
    else
      flash[:notice] = "You email is not valid, try again"
      redirect_to(:back)
    end
  end

  def profile_pic_upload
    if @current_facebookuser.present?
      User.add_profilepic(@current_user, "http://graph.facebook.com/" + @current_user.faceuid + "/picture")
    else
      User.add_profilepic(@current_user, "https://s-media-cache-ak0.pinimg.com/736x/97/22/6f/97226ffd114a2ba3b2f620ae9bf1d86e.jpg")
    end
    redirect_to (:back)
  end

end
