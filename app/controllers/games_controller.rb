  class GamesController < ApplicationController
  before_action :set_round, only: [:round, :answer]

  def index
    if logged_in
      # sets the total rounds in the game
      @num_rounds = 5
      game = Game.create

      session[:rounds] = []
      session[:round] = 1
      session[:points] = 0
      session[:point_value] = 10
      session[:hood] = User.find(session[:user_id]).hood.name
      session[:message] = nil
      session[:message_cat] = nil

      waste_ids = Waste.ids.sample(@num_rounds)
      waste_ids.each do |waste_id|
        round = Round.create(user_id: session[:user_id], game_id: game.id, waste_id: waste_id, score: 0)
        session[:rounds] << round.id
      end

    end

  end

  def round
    # set session[:waste] to the waste obj at the current round's index
    @waste = session[:waste] = Waste.find(@round.waste_id)
  end

  def answer
    if params[:commit] == session[:waste]['category']
      session[:points] += session[:point_value]
      @round.update(score: session[:point_value])
      session[:message] = self.right_answer
    else
      session[:message_cat] = "wrong"
      session[:message] = "Actually, #{session[:waste]['name']} go in the #{session[:waste]['category']}."
    end

    session[:round] += 1
    if session[:round] > session[:rounds].size
      # if round is greater than total rounds, end game
      redirect_to '/games/game_end'
    else
      redirect_to '/games/round'
    end
  end

  def right_answer
    session[:message_cat] = "right"
    [
      "Nice!",
      "Excellent work!",
      "You're crushing it!",
      "Observe the lamentation of your enemies!",
      "War is hell, except when you're winning!",
      "Your hood will reign victorious!",
      "Waste fears you!",
      "Another notch on your belt!",
      "The park just got a little nicer!",
      "The rivers run a little cleaner today.",
      "Post-apocalypse, shmost-apocalypse!",
      "You can start to see the ground again!",
      "Incredible!",
      "Victory!",
      "A greener planet awaits!",
      "You must be out of bubblegum!",
      "Seattle's bards will sing songs about you!"
    ].sample
  end

  def game_end
    # total up score, add to user's score, add to hood's score
    @points = session[:points]
    session[:points] = 0
    @hood = Hood.find_by(name: session[:hood])
    @hood.update(hood_score: @hood.hood_score + @points)
  end

  private

    def set_round
      # byebug
      @round_no = session[:round]
      @round = Round.find(session[:rounds][@round_no - 1])
    end

end
