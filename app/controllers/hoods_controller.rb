class HoodsController < ApplicationController
  # before_action :get_hood, only: [:show]

  def index
    @hoods = Hood.all
  end

  def show
    @hood = Hood.find(params[:id])
  end

  # private
  #   def get_hood
  #     @hood = Hood.find( User.find( session[:user] ).hood_id )
  #   end
end
