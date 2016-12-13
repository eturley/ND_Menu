class ProtectedControllerController < ApplicationController

  before_action :require_user

  def require_user
    if not session[:user_id]
      flash[:message] = 'Must be logged in'
      flash[:class]   = 'alert'
      redirect_to home_path
    end
  end

end
