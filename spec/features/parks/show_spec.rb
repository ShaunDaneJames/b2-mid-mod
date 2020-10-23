require 'rails_helper'

describe "As a visitor" do
  describe "Park's show page" do
    it "I see the name and price of admission for that park" do
      ride_1 = Ride.create!(name: "Lightning Racer",
                            rating: 9)
      park = Park.create!(name: "6 Flags",
                          price: 50.00,
                          rides: ride_1.id)

      visit "/parks/#{park.id}"

      expect(page).to have_content("#{park.name}")
      expect(page).to have_content("#{park.price}")
    end
  end
end
