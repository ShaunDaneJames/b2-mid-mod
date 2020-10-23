require 'rails_helper'

describe Park, type: :model do
  it 'average_rating' do
    park = Park.create!(name: "6 Flags",
                        price: 50.00)
    ride_1 = Ride.create!(name: "Lightning Racer",
                          rating: 9,
                          park_id: park.id)
    ride_2 = Ride.create!(name: "Storm Runner",
                          rating: 7,
                          park_id: park.id)
    ride_3 = Ride.create!(name: "The Great Bear",
                          rating: 8,
                          park_id: park.id)

    expect(park.average_rating).to eq(8)                      
  end
end
