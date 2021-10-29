require 'game'

describe Game do
  describe '#winner' do
    it 'determines a winner in scissors vs rock' do
      player1 = double(name: :Looser, weapon: :Scissors)
      player2 = double(name: :Winner, weapon: :Rock)
      game = Game.new(player1, player2)
      expect(game.winner).to eq('Winner')
    end
  end
end
