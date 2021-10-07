require 'game'

describe Game do
  let(:player) { double :player, name: 'foo' }

  describe "#initialize" do
    it "can be passed a player object" do
      game = Game.new(player)
      expect(game.player.name).to eq 'foo'
    end
  end

  describe "#player_choice" do
    it "sets the players choice to what is passed" do
      game = Game.new(player)
      allow(player).to receive(:set_choice).with('Rock')
      allow(player).to receive(:choice) { 'Rock' }
      game.player_choice('Rock')
      expect(game.player.choice).to eq 'Rock'
    end
  end
end
