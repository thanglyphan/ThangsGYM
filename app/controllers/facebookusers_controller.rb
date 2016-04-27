class FacebookusersController < ApplicationController
  def create
    facebookuser = Facebookuser.from_omniauth(env["omniauth.auth"])
    session[:facebookuser_id] = facebookuser.uid
    redirect_to root_path
  end

  def destroy
    session[:facebookuser_id] = nil
    redirect_to root_path
  end
end
