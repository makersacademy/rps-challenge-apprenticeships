require 'rockpaperscissors.rb'

describe Game do
  context 'compares player input against computer input and decides a winner' do

    context 'decides when the player wins' do
      it 'when player chooses Rock and computer chooses Scissors' do
      game = Game.new('Rock')
      allow(game).to receive(:computer_move).and_return('Scissors')
      expect(game.run).to eq 'player'
     end

      it 'when player chooses Paper and computer chooses Rock' do
      game = Game.new('Paper')
      allow(game).to receive(:computer_move).and_return('Rock')
      expect(game.run).to eq 'player'
    end

      it 'when player chooses Scissors and computer chooses Paper' do
      game = Game.new('Scissors')
      allow(game).to receive(:computer_move).and_return('Paper')
      expect(game.run).to eq 'player'
    end
  end

    context 'decides when the computer wins' do
      it 'when player chooses Rock and computer chooses Paper' do
      game = Game.new('Rock')
      allow(game).to receive(:computer_move).and_return('Paper')
      expect(game.run).to eq 'computer'
    end

    it 'when player chooses Paper and computer chooses Scissors' do
      game = Game.new('Paper')
      allow(game).to receive(:computer_move).and_return('Scissors')
      expect(game.run).to eq 'computer'
    end

    it 'when player chooses Scissors and computer chooses Rock' do
      game = Game.new('Scissors')
      allow(game).to receive(:computer_move).and_return('Rock')
      expect(game.run).to eq 'computer'
    end
  end

    context 'decides when neither wins' do
      it 'when player chooses Rock and computer chooses Rock' do
        game = Game.new('Rock')
      allow(game).to receive(:computer_move).and_return('Rock')
      expect(game.run).to eq 'neither'
      end
      
      it 'when player chooses Scissors and computer chooses Scissors' do
        game = Game.new('Scissors')
      allow(game).to receive(:computer_move).and_return('Scissors')
      expect(game.run).to eq 'neither'
      end

      it 'when player chooses Paper and computer chooses Paper' do
        game = Game.new('Paper')
      allow(game).to receive(:computer_move).and_return('Paper')
      expect(game.run).to eq 'neither'
      end
    end
  end
end
