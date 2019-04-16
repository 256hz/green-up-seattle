class Game < ApplicationRecord
  has_many :rounds
  has_many :users, through: :rounds
end
