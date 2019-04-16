class GameController < ApplicationController

  def index
  end

  def round
    @round = Round.create
    render :round
  end

  def game_end
  end

end
