class AuthController < ApplicationController

  def login
    @user = User.find_by_email params[:user][:email]
    if @user and @user.authenticate params[:user][:password]
      session[:user_id] = @user.id
      redirect_to eateries_path
    else
      flash[:message] = 'Login error'
      flash[:class] = 'alert'
      redirect_to home_path
    end
  end

  def logout
    flash[:message] = 'Logged out'
    flash[:class] = 'primary'
    session[:user_id] = nil
    redirect_to home_path
  end

end
