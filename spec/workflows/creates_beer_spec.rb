require "rails_helper"

RSpec.describe CreatesBeer do
  describe "initialization" do
    it "creates a beer given a name" do
      creator = CreatesBeer.new(name: "Fake_Beer_Numba_One")
      creator.build
      expect(creator.beer.name).to eq("Fake_Beer_Numba_One")
    end
  end

  describe "failure cases" do
    it "fails when trying to save a beer with no name" do
      creator = CreatesBeer.new(name: "", beer_type: "")
      creator.create
      expect(creator).not_to be_a_success
    end
  end
end
