class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:signup] = "You have suscessfully signed up. Please login to continue."
      redirect_to root_path
    else
      flash[:error] = "Please ensure you are using a valid email address and that your passwords match"
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
