class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
  # not requiring unique password due to making experimenting easier
  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
end
