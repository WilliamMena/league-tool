class Team < ApplicationRecord
  has_many :games, :class_name => "Game", :foreign_key => "team_1_id"
  has_many :games, :class_name => "Game", :foreign_key => "team_2_id"

  def all_games
    games = []
    games.push(Game.where(team_1: self))
    games.push(Game.where(team_2: self))
    return games
  end
end
