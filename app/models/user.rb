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

  def points
    @points ||= 0
    Round.all.each do |round|
      if round.user_id == self.id
        @points += round.score
      end
    end
    @points
    # @points = Round.all.inject(0) {|points, round| points += round.score if round.user_id == self.id}
  end

  def level
    case self.points
      when 0..49
        "Level 1 - Seed"
      when 50..199
        "Level 2 - Sapling"
      when 200..399
        "Level 3 - Shrub"
      when 400..599
        "Level 4 - Tree"
      when 600..999
        "Level 5 - Forest"
      else
        "Level 6 - Captain Planet"
    end
  end

end
