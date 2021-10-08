require "player"

describe Player do
  subject(:bob) { described_class.new("Bob") }

  describe "#name" do
    it "returns the name of a player" do
      expect(bob.name).to eq "Bob"
    end
  end

  describe "#player_choice" do
    it "returns the player's choice" do
      bob.selection("Scissors")
      expect(bob.player_choice).to eq "Scissors"
    end
  end
end
