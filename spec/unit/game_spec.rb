require 'game'

describe Game do
  before :each do
    srand(0)
  end

  describe '.get' do
    it 'returns an instance of Game' do
      expect(described_class.get).to be_a described_class
    end
    it 'returns the same instance each time it is called' do
      expect(described_class.get).to eq(described_class.get)
    end
  end

  describe '#move' do
    it 'returns a valid move' do
      expect(subject.move).to eq(:rock)
    end
  end

  describe '#wins_against?' do
    it 'returns true when passed rock, scissors' do
      expect(subject.wins_against?(:rock, :scissors)).to eq true
    end
    it 'returns false when passed paper, scissors' do
      expect(subject.wins_against?(:paper, :scissors)).to eq false
    end
    it 'returns true when passed scissors, paper' do
      expect(subject.wins_against?(:scissors, :paper)).to eq true
    end
    it 'raises an error if passed an invalid move' do
      expect { subject.wins_against?('derek', false) }.to raise_error 'Invalid move'
    end
  end

  describe '#draws_against?' do
    it 'returns true when passed two rocks' do
      expect(subject.draws_against?(:rock, :rock)).to eq true
    end
    it 'returns false when passed rock and paper' do
      expect(subject.draws_against?(:rock, :paper)).to eq false
    end
  end

  describe '#valid_move?' do
    it 'returns true when passed rock' do
      expect(subject.valid_move?(:rock)).to eq true
    end
    it 'returns false when passed sandwich' do
      expect(subject.valid_move?(:sandwich)).to eq false
    end
  end
end
