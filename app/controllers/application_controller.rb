class ApplicationController < ActionController::Base
  #before_filter :authenticate_user
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :current_facebookuser
  before_action :all_users

  def all_users
    @cart = Cart.all
    @all_users = User.all
    @all_reviews = Review.all
    @all_events = Calender.all.order(:date)
    @coaches_stats = Coach.all
    @coaches = Coach.all.map{|c| [c.name]}
    @items = Item.all



    #@my_photos = ::Instagram.media_popular
    @my_photos = ::Instagram.user_recent_media(934284484, {:count => 100})
  end

  def current_facebookuser
    @current_facebookuser ||= Facebookuser.find(session[:facebookuser_id]) if session[:facebookuser_id]
  end

  protected
  def authenticate_user
    if cookies[:auth_token] #session[:user_id]
      # set current user object to @current_user object variable
      #@coaches = Coach.all.map{|c| [c.name]}
      #@current_user = User.find session[:user_id]
      @current_user = User.find_by(:auth_token => cookies[:auth_token]) if cookies[:auth_token]
      @is_coaching = User.all #@current_user.coach
      @all_users = User.all
      @list_of_bookings = AllMyBooking.all
      @group_training = GroupExercise.all
      #@coaches_stats = Coach.all
      #@cname = @current_user.coach
      if @current_user.admin?
        return 'admin'
      end
      return true
    else
      redirect_to login_path
      return false
    end
  end

  def save_login_state
    if cookies[:auth_token]#session[:user_id]
      redirect_to home_path
      return false
    else
      return true
    end
  end

  def load_user_and_subs
    @current_user = User.find_by(:auth_token => cookies[:auth_token]) if cookies[:auth_token]
    @subs = Subscription.find_by(:email => @current_user.email)
  end
end
