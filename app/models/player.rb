class Player < ApplicationRecord
  validates :first_name
  validates :last_name
  validates :email
  validates :password
  validates :phone_number
end
