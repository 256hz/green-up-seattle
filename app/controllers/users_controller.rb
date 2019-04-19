class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update]

  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/'
    else
      @errors = @user.errors.full_messages
      render :new
    end
  end

  def edit
    render :new
  end

  def update
    if @user.update(user_params)
      redirect_to "/users/#{@user.id}"
    else
      @errors = @user.errors.full_messages
      render :new
    end
  end

  private
    def set_user
      if logged_in
        @user = User.find(session[:user_id])
      else
        redirect_to '/'
      end
    end

    def user_params
      params.require(:user).permit!
    end

end
