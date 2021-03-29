require 'Game'

describe Game do 

  # subject(:game) { described_class.new }
  
  describe '#result' do
    it 'calcutes a win' do 
      game = Game.new("Rock", "Scissors") 
      expect(game.result).to eq('You have won!')
    end 

    it 'calculates a draw' do 
      game = Game.new("Rock", "Rock") 
      expect(game.result).to eq("It's a draw, try again")
    end 

    it 'calculates a loss' do 
      game = Game.new("Rock", "Paper") 
      expect(game.result).to eq("You have lost!")
    end 
  end

end
