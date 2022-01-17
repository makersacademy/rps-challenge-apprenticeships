require 'game'

describe Game do
  

  describe '#result' do
    it 'calculates the result of the game as a win' do
      game = Game.new("Rock", "Scissors")
      expect(game.game_result).to eq "Congrats Olivia, you've won!"
    end

    it 'calculates the result of the game as a player loss' do
      game = Game.new("Scissors", "Rock")
      expect(game.game_result).to eq "Sorry Olivia, but the computer won!"
    end

    it 'calculates the result of the game as a draw' do
      game = Game.new("Scissors", "Scissors")
      expect(game.game_result).to eq "It's a draw"
    end
  end

end