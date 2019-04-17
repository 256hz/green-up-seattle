class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(username: params[:username]).authenticate(params[:password])
    if @user
      session[:user_id] = params[:user][:id]
      redirect_to '/'
    else
      flash[:message] = "Incorrect Login information"
      redirect_to '/'
    end
  end

  def destroy
    session.delete :user_id
  end

end
