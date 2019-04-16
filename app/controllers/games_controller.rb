class GamesController < ApplicationController

  def index
    # change this number to change the total rounds in the game
    rounds = 5

    # create empty array of rounds
    session[:rounds] = Waste.order("RANDOM()").limit(rounds)

    # set current round to 0
    session[:round] = 0

    byebug
  end

  def round
    session[:round] += 1
    round = session[:round]

    # if round is greater than total rounds, end game
    if round > session[:rounds].size
      get 'games#game_end'
    end
    @round = session[:rounds][round]
    render :round
  end

  def game_end
  end

end
