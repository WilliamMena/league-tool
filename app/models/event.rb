class Event < ApplicationRecord
  belongs_to :location
  belongs_to :season
  has_many :games
end
