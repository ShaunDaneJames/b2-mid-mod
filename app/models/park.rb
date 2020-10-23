class Park < ApplicationRecord
  has_many :rides

  def average_rating
    rides.average(:rating)
  end 
end
