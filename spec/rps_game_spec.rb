require 'rps_game'

describe RPS_Game do
  subject(:game) { described_class.new(player_choice, computer_choice) }
  let(:player_choice) { 'Rock' }
  let(:computer_choice) { 'Scissors' }

  describe '#player_choice' do
    it 'can recieve a paramater and return it' do
      expect(subject.player_choice).to eq 'Rock'
    end
  end

  describe '#computer_choice' do
    it 'can recieve a choice from the computer' do
      expect(subject.computer_choice).to eq 'Scissors'
    end
  end

  describe '#draw' do
    let(:computer_choice) {'Rock'}

    it 'returns a draw when player and computer choice is the same' do
      expect(subject.result).to eq 'Draw'
    end
  end

  describe '#player_win?' do
    it 'determines if the player has won a round' do
      expect(subject.result).to eq true
    end
  end
end
