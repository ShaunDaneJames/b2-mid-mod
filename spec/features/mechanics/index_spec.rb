require 'rails_helper'

describe "As a user" do
  describe "When I visit the mechanics index page" do
    it "I see a header saying 'All Mechanics'
    as well as a list of all mechanic's names and their years of exp" do
      mechanic_1 = Mechanic.create!(name: "Sam Mills",
                                    years_of_exp: 10)
      mechanic_2 = Mechanic.create!(name: "Kara Smith",
                                    years_of_exp: 11)

      visit "/mechanics"

      expect(page).to have_content("#{mechanic_1.name}")
      expect(page).to have_content("#{mechanic_1.years_of_exp} years of experience")
    end
  end
end
