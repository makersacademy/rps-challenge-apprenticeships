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

  context 'the player chooses rock' do
    describe 'and the computer chooses rock' do
      let(:computer_choice) {'Rock'}
      it { expect(subject.result).to eq 'Draw' }
    end

    describe 'and the computer chooses scissors, does the player win?' do
      let(:computer_choice) {'Scissors'}
      it { expect(subject.result).to eq true}
    end

    describe 'the computer chooses paper, does the player win?' do
      let(:computer_choice) {'Paper'}
      it { expect(subject.result).to eq false}
    end
  end
end

#context blocks for all draws, then win and lose block for other choices