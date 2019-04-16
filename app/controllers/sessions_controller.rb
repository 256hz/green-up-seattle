class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
      session[:user_id] = params[:id]
      redirect_to '/'
  end

  def destroy
    session.delete :user_id
  end

end
