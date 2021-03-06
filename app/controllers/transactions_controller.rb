class TransactionsController < ApplicationController
  before_filter :authenticate_user, :only => [:new, :create]
  before_filter :save_login_state, :only => [:login, :login_attempt]
  before_action :get_item_and_user #Call this to get variables of the user and the purchased item.


  def new
    gon.client_token = generate_client_token
  end

  def create

    @result = Braintree::Transaction.sale(
              amount: session[:price],
              payment_method_nonce: params[:payment_method_nonce])
    if @result.success?
      UserMailer.deliver_product(@current_user, @current_item, @cart).deliver_now
      session[:price] = 0 #Set this to zero, until next payment.
      redirect_to root_url, notice: "OKBUY"
    else
      flash[:alert] = "Noe gikk galt! Prøv igjen :("
      gon.client_token = generate_new_client_token
      render :new
    end
  end

  def get_item_and_user
    @current_item = Item.find_by(:program => session[:program])
    @current_user = User.find_by(:auth_token => cookies[:auth_token])
    #@current_user = User.find session[:user_id]
  end

  private
  def generate_client_token
    Braintree::ClientToken.generate
  end
end
