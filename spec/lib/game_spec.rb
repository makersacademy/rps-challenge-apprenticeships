require 'game'

describe Game do
  describe "#initialize" do
    let(:player) { double :player, name: 'foo' }

    it "can be passed a player object" do
      game = Game.new(player)
      expect(game.player.name).to eq 'foo'
    end
  end
end
