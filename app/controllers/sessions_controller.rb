class SessionsController < ApplicationController
  # before_action :require_login
  # skip_before_action :require_login, only: [:index, :new, :create]

  # def new
  #   @user = User.new
  # end

  def create #login
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
    session.clear
    redirect_to '/'
  end


end
