require 'game'

describe Game do
  describe '#winner' do
    it 'determines a winner in scissors vs rock' do
      player1_name = 'Looser'
      player1_weapon = :Scissors
      player2_name = 'Winner'
      player2_weapon = :Rock
      game = Game.new(player1_name, player1_weapon, player2_name, player2_weapon)
      expect(game.winner).to eq('Winner')
    end
  end
end
