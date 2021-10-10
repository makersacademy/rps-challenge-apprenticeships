require "player"

describe Player do
  describe "#initialize" do
    it "creates an instance with the player's name" do
      player = Player.new("Ana")
      expect(player.name).to eq "Ana"
    end
  end
end
