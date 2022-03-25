require 'game'

RSpec.describe Game do
  describe 'creates a new game' do
    it 'retrieves the first player' do
      player = double :player
      game = Game.new(player)
      expect(game.player).to eq player
    end

    xit 'initializes a CPU instance' do
      cpu = double :cpu, move: "Rock"
      player = double :player
      game = Game.new(player)
      expect(game.cpu_move).to eq "Rock"  
    end

    xit 'chooses a winner based on moves' do
      player = double :player, move: "Paper"
      game = Game.new(player)
      expect(game.winner).to eq player
    end
  end
end
