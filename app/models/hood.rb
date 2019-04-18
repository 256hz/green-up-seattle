class Hood < ApplicationRecord
  has_many :users
  has_many :sub_hoods
end
