class User < ApplicationRecord
  belongs_to :hood
  has_many :rounds
  has_many :games, through: :rounds
end
