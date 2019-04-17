  class GamesController < ApplicationController
  before_action :set_round, only: [:round, :answer]

  def index
    # sets the total rounds in the game
    rounds = 5
    game = Game.create

    session[:rounds] = []
    session[:round] = 1
    session[:points] = 0
    session[:user_id] = User.first.id
    session[:hood] = User.find(session[:user_id]).hood.name

    waste_ids = Waste.ids.sample(rounds)
    waste_ids.each do |waste_id|
      round = Round.create(user_id: session[:user_id], game_id: game.id, waste_id: waste_id, score: 0)
      session[:rounds] << round.id
    end

  end

  def round
    # set session[:waste] to the waste obj at the current round's index
    session[:waste] = Waste.find(@round.waste_id)
  end

  def answer
    if params[:commit] == session[:waste]['category']
      session[:points] += 1
      @round.update(score: 1)
      flash[:message] = 'Nice!'
    else
      flash[:message] = "#{session[:waste]['name']} should be put into the #{session[:waste]['category']}."
    end

    session[:round] += 1
    if session[:round] > session[:rounds].size
      # if round is greater than total rounds, end game
      redirect_to '/games/game_end'
    else
      redirect_to '/games/round'
    end
  end

  def game_end
    byebug
    # total up score, add to user's score, add to hood's score
    @hood = Hood.find_by(name: session[:hood])
    @hood_score = @hood.hood_score += session[:points]
    @hood.update(hood_score: @hood_score)
  end

  private

  def set_round
    # byebug
    @round_no = session[:round]
    @round = Round.find(session[:rounds][@round_no - 1])
  end

end
