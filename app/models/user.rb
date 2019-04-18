class User < ApplicationRecord
  has_secure_password

  belongs_to :hood
  has_many :rounds
  has_many :games, through: :rounds

  validates :name, presence: true
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
  validates :password_confirmation, presence: true
  validates :hood, presence: true
end
