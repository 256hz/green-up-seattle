class GamesController < ApplicationController
  before_action :set_round, only: [:round, :answer]

  def index
    # sets the total rounds in the game
    rounds = 5
    game = Game.create
    session[:rounds] = []

    # creates an array of random rounds, stores in session
    rounds.times do
      waste_id = Waste.ids.shuffle.first
      session[:rounds] << Round.create(user_id: 1, game_id: game.id, waste_id: waste_id)
    end

    # set current round to 0
    session[:round] = 0
    session[:points] = 0

  end

  def round
    # byebug

    # if round is greater than total rounds, end game
    redirect_to '/games/game_end' if @round == session[:rounds].size

    # set @waste to the waste obj at the current round's index
    @waste = Waste.find(session[:rounds][@round].waste_id)
  end

  def answer
    # byebug
    if params[:commit] == session[:rounds][@round]['category']
      session[:points] += 1
      flash[:message] = 'Nice!'
    else
      flash[:message] = "#{session[:rounds][@round]['name']} should be put into the #{session[:rounds][@round]['category']}."
    end

    session[:round] += 1
    redirect_to '/games/round'
  end

  def game_end
    # total up score, add to user's score, add to hood's score
  end

  def set_round
    @round = session[:round]
  end

end
