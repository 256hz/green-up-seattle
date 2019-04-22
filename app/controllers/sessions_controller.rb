class SessionsController < ApplicationController

  def create #login
    @user = User.find_by(username: params[:username])
    # byebug
    if @user
      if @user.authenticate(params[:password])
        session[:user_id] = @user.id
        flash[:message] = "Welcome back #{@user.username}!"
        redirect_to '/'
      else
        flash[:message] = "Incorrect Login information"
        redirect_to '/'
      end
    else
      flash[:message] = "Incorrect Login information"
      redirect_to '/'
    end
  end

  def logout
    session.clear
    redirect_to '/'
  end


end
