require 'rails_helper'

describe "As a visitor" do
  describe "Park's show page" do
    it "I see the name and price of admission for that park" do
      park = Park.create!(name: "6 Flags",
                          price: 50.00)

      visit "/parks/#{park.id}"

      expect(page).to have_content("#{park.name}")
      expect(page).to have_content("$#{park.price}")
    end

    it "I see the names of each ride and the average rating" do
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
      ride_3 = Ride.create!(name: "The Great Bear",
                            rating: 8,
                            park_id: park.id,
                            mechanic_id: jimbob.id)

      visit "/parks/#{park.id}"

      expect(page).to have_content(ride_1.name)
      expect(page).to have_content(ride_2.name)
      expect(page).to have_content(ride_3.name)
      expect(page).to have_content(park.average_rating)
    end
  end
end
