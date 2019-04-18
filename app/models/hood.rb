class Hood < ApplicationRecord
  has_many :users
  has_many :sub_hoods

  def name_with_id
    "#{self.id - Hood.all.min_by(&:id).id + 1} - #{self.name}"
  end
end
