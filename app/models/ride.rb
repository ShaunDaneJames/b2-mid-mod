class Ride < ApplicationRecord
  belongs_to :park
  belongs_to :mechanic
end
