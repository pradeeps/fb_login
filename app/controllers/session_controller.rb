class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    
    render :text => user.inspect
    #session[:user_id] = user.id
    #redirect_to root_url
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end