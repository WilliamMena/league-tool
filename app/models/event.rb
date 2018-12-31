class Event < ApplicationRecord
  has_one :location
  belongs_to :season
  has_many :games
end
