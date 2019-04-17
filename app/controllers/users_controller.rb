class UsersController < ApplicationController

  before_action :require_login
  skip_before_action :require_login, only: [:index, :new, :create]

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
      # byebug
      redirect_to @user
    else
      render :new
    end

  end

  private

  def user_params
    params.require(:user).permit!
  end

  def require_login
    # byebug
    return head(:forbidden) unless !session.nil?
  end

end
