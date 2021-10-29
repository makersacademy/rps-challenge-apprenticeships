require 'game'

describe Game do
  describe '#winner' do
    it 'determines a winner in scissors vs rock' do
      player1 = double(name: :Looser, weapon: :Scissors)
      player2 = double(name: :Winner, weapon: :Rock)
      game = Game.new(player1, player2)
      expect(game.winner).to eq(:Winner)
    end
    it 'always determines the correct winner' do
      winning_weapons = [:Rock, :Paper, :Scissors]
      loosing_weapons = [:Scissors, :Rock, :Paper]
      expected_wins = [:always_wins, :always_wins, :always_wins]
      actual_wins = []
      winning_weapons.each_with_index do |weapon, i|
        player1 = double(name: :always_wins, weapon: weapon)
        player2 = double(name: :always_looses, weapon: loosing_weapons[i])
        game = Game.new(player1, player2)
        actual_wins << game.winner
      end
      expect(actual_wins).to eq expected_wins
    end
  end
end
