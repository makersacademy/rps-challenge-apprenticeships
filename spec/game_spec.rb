require "game"
describe Game do
  let(:player) { instance_double(Player, :name => "Ana") }
  let(:round) { Game.new(player) }
  describe "#initialize" do
    it "sets the player_name" do
      expect(round.player_name).to eq player
    end
  end
end
