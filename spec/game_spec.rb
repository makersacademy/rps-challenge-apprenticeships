require 'game'

describe Game do
  describe '#outcome' do
    it 'determines a winner in scissors vs rock' do
      player1 = double(name: :Loser, weapon: :Scissors)
      player2 = double(name: :Winner, weapon: :Rock)
      game = Game.new(player1, player2)
      expected_winner = game.outcome[:winner]
      expect(expected_winner).to eq(:Winner)
    end
    it 'determines a win by player one correclty' do
      winning_weapons = [:Rock, :Paper, :Scissors]
      loosing_weapons = [:Scissors, :Rock, :Paper]
      expected_outcome = Array.new(3) { { winner: :player1, loser: :player2 } }
      actual_outcome = []
      winning_weapons.each_with_index do |weapon, i|
        player1 = double(name: :player1, weapon: weapon)
        player2 = double(name: :player2, weapon: loosing_weapons[i])
        game = Game.new(player1, player2)
        actual_outcome << game.outcome
      end
      expect(actual_outcome).to eq expected_outcome
    end
    it 'determines a win by player two correclty' do
      winning_weapons = [:Rock, :Paper, :Scissors]
      loosing_weapons = [:Scissors, :Rock, :Paper]
      expected_outcome = Array.new(3) { { winner: :player2, loser: :player1 } }
      actual_outcome = []
      winning_weapons.each_with_index do |weapon, i|
        player1 = double(name: :player1, weapon: loosing_weapons[i])
        player2 = double(name: :player2, weapon: weapon)
        game = Game.new(player1, player2)
        actual_outcome << game.outcome
      end
      expect(actual_outcome).to eq expected_outcome
    end
  end
end
