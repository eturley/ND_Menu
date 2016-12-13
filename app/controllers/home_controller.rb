class HomeController < ApplicationController

  def index
    @user = User.new
  end

  def signup
    @user = User.new
  end

  def save_user
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        session[:user_id] = @user.id
        format.html { redirect_to eateries_path, notice: 'Successfully signed up!' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def user_params
      params.require(:user).permit(:email, :password, :password_digest)
    end

end
