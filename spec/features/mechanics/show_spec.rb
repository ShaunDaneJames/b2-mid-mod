require 'rails_helper'

describe "As a user" do
  describe "When I visit a mechanic's show page" do
    it "I see their name, years of exp,
    and names of all rides they're working on" do
    jimbob = Mechanic.create!(name: "Jimbob",
                              years_of_exp: 20)
    park = Park.create!(name: "6 Flags",
                        price: 50.00)
    ride_1 = Ride.create!(name: "Lightning Racer",
                          rating: 9,
                          park_id: park.id,
                          mechanic_id: jimbob.id)
    ride_2 = Ride.create!(name: "Storm Runner",
                          rating: 7,
                          park_id: park.id,
                          mechanic_id: jimbob.id)

    visit "/mechanics/#{jimbob.id}"

    expect(page).to have_content(jimbob.name)
    expect(page).to have_content(jimbob.years_of_exp)
    expect(page).to have_content(jimbob.years_of_exp)
    expect(page).to have_content(ride_1.name)
    expect(page).to have_content(ride_2.name)                        
    end
  end
end
