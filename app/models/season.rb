class Season < ApplicationRecord
  belongs_to :league
  has_many :events
  has_many :locations, through: :events
  has_many :games, through: :events
end
