require 'game'

RSpec.describe Game do
  describe 'creates a new game' do
    it 'retrieves the first player' do
      player = double :player
      game = Game.new(player)
      expect(game.player).to eq player
    end
  end
end
