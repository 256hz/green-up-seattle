class Round < ApplicationRecord
  belongs_to :game
  belongs_to :user
end
