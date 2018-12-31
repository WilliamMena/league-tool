class Bar < ApplicationRecord
  has_many :locations
  has_many :gyms, through: :locations

end
