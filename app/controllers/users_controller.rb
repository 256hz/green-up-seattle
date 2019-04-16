class UsersController < ApplicationController

  before_action :require_login
  skip_before_action :require_login, only: [:index, :new]

  def new
      @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def index
  end

  def create
    @user = User.create(user_params)
  end

  private

  def user_params
    params.require(:user).permit!
  end

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end

end
