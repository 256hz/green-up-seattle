class SessionsController < ApplicationController

  def create #login
    @user = User.find_by(username: params[:username]).authenticate(params[:password])
    if @user
      session[:user_id] = @user.id
      flash[:message] = "Welcome to the hood!"
      redirect_to '/'
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
