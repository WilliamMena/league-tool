require 'pry'
class Event < ApplicationRecord
  belongs_to :location
  belongs_to :season
  has_many :games

  belongs_to :winner, :class_name => "Team", foreign_key: "team_id"

  # need to figure out default paramters to always point to the default team
end
