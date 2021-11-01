require 'game'

describe Game do
  describe '#winner' do
    it 'determines a winner in scissors vs rock' do
      player1 = double(name: :Looser, weapon: :Scissors)
      player2 = double(name: :Winner, weapon: :Rock)
      game = Game.new(player1, player2)
      expect(game.winner).to eq(:Winner)
    end
    it 'determines a win by player one correclty' do
      winning_weapons = [:Rock, :Paper, :Scissors]
      loosing_weapons = [:Scissors, :Rock, :Paper]
      expected_wins = [:player1, :player1, :player1]
      actual_wins = []
      winning_weapons.each_with_index do |weapon, i|
        player1 = double(name: :player1, weapon: weapon)
        player2 = double(name: :player2, weapon: loosing_weapons[i])
        game = Game.new(player1, player2)
        actual_wins << game.winner
      end
      expect(actual_wins).to eq expected_wins
    end
    it 'determines a win by player two correclty' do
      winning_weapons = [:Rock, :Paper, :Scissors]
      loosing_weapons = [:Scissors, :Rock, :Paper]
      expected_wins = [:player2, :player2, :player2]
      actual_wins = []
      winning_weapons.each_with_index do |weapon, i|
        player1 = double(name: :player1, weapon: loosing_weapons[i])
        player2 = double(name: :player2, weapon: weapon)
        game = Game.new(player1, player2)
        actual_wins << game.winner
      end
      expect(actual_wins).to eq expected_wins
    end
  end
end
