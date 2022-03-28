require "weapon"

describe Weapon do
  subject(:weapon) { Weapon.new }

  describe "#winner" do
    it "is initialized as false" do
      expect(weapon.winner).to eq(false)
    end
  end

  describe "#loser" do
    it "is initialized as false" do
      expect(weapon.loser).to eq(false)
    end
  end

  describe "#draw" do
    it "is initialized as false" do
      expect(weapon.draw).to eq(false)
    end
  end
end
