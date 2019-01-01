class Player < ApplicationRecord
  has_many :players_teams, :class_name => 'PlayerTeam'
  has_many :teams, :through => :players_teams

  # validates :first_name
  # validates :last_name
  # validates :email
  # validates :password
  # validates :phone_number
end
