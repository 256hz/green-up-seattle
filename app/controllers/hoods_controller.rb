class HoodsController < ApplicationController


  def index
    @hoods = Hood.all
  end

  def show
    @hood = Hood.find(params[:id])
  end



end
