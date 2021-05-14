require 'game'

describe Game do

  let(:player) { double name: 'Timothy', choice: 'paper' }
  let(:subject) { described_class.new(player) }
  
  describe '#player' do
    it '#name returns player name' do
      expect(subject.player.name).to eq 'Timothy'
    end

    it '#choice returns player choice' do
      expect(subject.player.choice).to eq 'paper'
    end
  end

  describe '#random_number' do
    it { is_expected.to respond_to :random_number }

    it 'returns a number 1 to 3 inclusive' do
      expect(subject.random_number).to be_between(1,3)
    end
  end

  describe 'decision' do
    it { is_expected.to respond_to :decision }

    it 'can return rock' do
      allow(subject).to receive(:random_number).and_return(1)
      # p subject.random_number
      expect(subject.decision).to eq 'rock'
    end

    it 'can return paper' do
      allow(subject).to receive(:random_number).and_return(2)
    
      expect(subject.decision).to eq 'paper'
    end

    it 'can return scissors' do
      allow(subject).to receive(:random_number).and_return(3)

      expect(subject.decision).to eq 'scissors'
    end
  end

  describe '#play' do
    it { is_expected.to respond_to :play }

    context 'when player chooses rock' do
      let(:player) { double choice: 'rock' }

      it 'player draws' do
        allow(subject).to receive(:decision).and_return('rock')
        expect(subject.play).to eq "It's a draw!"
      end

      it 'player wins' do
        allow(subject).to receive(:decision).and_return('scissors')
        expect(subject.play).to eq "You win!"
      end

      it 'player loses' do
        allow(subject).to receive(:decision).and_return('paper')
        expect(subject.play).to eq "You lose!"
      end
    end

    context 'when player chooses paper' do
      it 'player draws' do
        allow(subject).to receive(:decision).and_return('paper')
        expect(subject.play).to eq "It's a draw!"
      end

      it 'player wins' do
        allow(subject).to receive(:decision).and_return('rock')
        expect(subject.play).to eq 'You win!'
      end

      it 'player loses' do
        allow(subject).to receive(:decision).and_return('scissors')
        expect(subject.play).to eq 'You lose!'
      end
    end

    context 'when player chooses scissors' do
      let(:player) { double choice: 'scissors' }

      it 'player draws' do
        allow(subject).to receive(:decision).and_return('scissors')
        expect(subject.play).to eq "It's a draw!"
      end

      it 'player wins' do
        allow(subject).to receive(:decision).and_return('paper')
        expect(subject.play).to eq "You win!"
      end

      it 'player loses' do
        allow(subject).to receive(:decision).and_return('rock')
        expect(subject.play).to eq "You lose!"
      end
    end


  end


end
