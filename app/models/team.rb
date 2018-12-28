class Team < ApplicationRecord
  has_many :games, :class_name => "Game", :foreign_key => "team_1_id"
  has_many :games, :class_name => "Game", :foreign_key => "team_2_id"
end
