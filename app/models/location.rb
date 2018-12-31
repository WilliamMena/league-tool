class Location < ApplicationRecord
  belongs_to :gym
  belongs_to :bar
  has_many :events
end
