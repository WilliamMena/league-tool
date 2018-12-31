class Event < ApplicationRecord
  belongs_to :location
  belongs_to :season
  has_many :games

  belongs_to :winner, :class_name => "Team", foreign_key: "team_id"
end
