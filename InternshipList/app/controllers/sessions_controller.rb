class SessionsController < ApplicationController
  def new
  end

  def create
    data = params[:session_data]
    @user = User.find_by_email(data[:email])
    if @user.nil?
      flash.now[:error] = "That email and password do not match or do not exist. Please try again or sign up."
      render :index
    else
      flash.now[:login] = "Welcome #{@user.first_name}!"
      redirect_to companies_path
    end
  end

  def destroy

  end
end
