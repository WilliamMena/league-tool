class Gym < ApplicationRecord
  has_many :locations
  has_many :bars, through: :locations

  # gym and bar need to have a joins table that leads to this seasons gym and bar.
end
