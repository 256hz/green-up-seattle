class Round < ApplicationRecord
  belongs_to :game
  belongs_to :user
  belongs_to :waste
end
