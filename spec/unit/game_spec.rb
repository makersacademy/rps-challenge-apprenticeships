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
end