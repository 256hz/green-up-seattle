class UsersController < ApplicationController



  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def index
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = params[:user][:id]
      flash[:message] = "Welcome to the hood!"
      redirect_to @user
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit!
  end

end
