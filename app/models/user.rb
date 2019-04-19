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
    points = Round.all.inject(0) {|points, round| points += round.score if round.user_id == self.id}
    points ||= 0
  end

  def level
    case self.points
    when 0..99
      "1. Seed"
    when 100..249
      "2. Sapling"
    when 250..499
      "3. Shrub"
    when 500..799
      "4. Tree"
    when 800..1199
      "5. Ent"
    when self.points >= 1200
      "6. Nature Itself"
    end

    # "1. Seed" if self.points < 100
    # "2. Sapling" if self.points < 250 && self.points > 99
    # "3. Shrub" if self.points < 500 && self.points > 249
    # "4. Tree" if self.points < 800 && self.points > 499
    # "5. Ent" if self.points < 1200 && self.points > 799
    # "6. Nature Itself" if self.points > 1199
  end
end
