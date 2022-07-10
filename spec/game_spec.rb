require './lib/game' 

describe Game do
  player = Player.new("Marlon")
  subject(:game) { Game.new(Player.new(player)) }

  describe "#name" do
    it "returns the players name from game class" do
      expect(game.player_name.name).to eq "Marlon"
    end
  end
end