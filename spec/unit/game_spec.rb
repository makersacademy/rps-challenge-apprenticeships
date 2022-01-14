require 'game'

describe Game do
  let(:game) { described_class.new('rock', 'scissors') }

  describe '#player_choice' do
    it 'knows the player\'s choice' do
      expect(game.player_choice).to eq 'rock'
    end
  end

  describe '#computer_choice' do
    it 'knows the computer\'s choice' do
      expect(game.computer_choice).to eq 'scissors'
    end
  end

  describe '#result' do
    context 'User enters rock' do
      let(:player) { double(:player, choice: 'rock')}

      it 'returns \'You Won\' when user choice is rock and computer choice is scissors' do
        expect(Game.new(player.choice, 'scissors').result).to eq 'You Won'
      end

      it 'returns \'You Lost\' when user choice is rock and rock choice is paper' do
        expect(Game.new(player.choice, 'paper').result).to eq 'You Lost'
      end

      it 'returns \'You Drew\' when both choices are rock' do
        expect(Game.new(player.choice, 'rock').result).to eq 'You Drew'
      end
    end

    context 'User enters paper' do
      let(:player) { double(:player, choice: 'paper')}

      it 'returns \'You Won\' when user choice is paper and computer choice is rock' do
        expect(Game.new(player.choice, 'rock').result).to eq 'You Won'
      end  

      it 'returns \'You Lost\' when user choice is paper and computer choice is scissors' do
        expect(Game.new(player.choice, 'scissors').result).to eq 'You Lost'
      end

      it 'returns \'You Drew\' when both choices are paper' do
        expect(Game.new(player.choice, 'paper').result).to eq 'You Drew'
      end
    end

    context 'User enters scissors' do
      let(:player) { double(:player, choice: 'scissors')}      

      it 'returns \'You Won\' when user choice is scissors and computer choice is paper' do
        expect(Game.new(player.choice, 'paper').result).to eq 'You Won'
      end

      it 'returns \'You Lost\' when user choice is scissors and computer choice is rock' do
        expect(Game.new(player.choice, 'rock').result).to eq 'You Lost'
      end

      it 'returns \'You Drew\' when both choices are scissors' do
        expect(Game.new(player.choice, 'scissors').result).to eq 'You Drew'
      end    
    end
  end
end