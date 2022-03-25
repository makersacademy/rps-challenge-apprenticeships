require 'game'

RSpec.describe Game do
  describe 'creates a new game' do
    it 'retrieves the first player' do
      player = double :player
      game = Game.new(player)
      expect(game.player).to eq player
    end

    it 'initializes a CPU instance' do
      cpu = double :cpu
      player = double :player
      game = Game.new(player)
      expect(game.cpu_move).to eq "Rock"  
    end
  end
end
